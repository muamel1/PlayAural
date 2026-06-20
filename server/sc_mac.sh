#!/bin/bash

set -u

SERVICE_NAME="playaural"
VOICE_SERVICE_NAME="playaural-livekit"

SERVER_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(cd "$SERVER_DIR/.." && pwd)"
CONFIG_DIR="$SERVER_DIR/.config"
VOICE_ENV_FILE="$CONFIG_DIR/voice.env"
LIVEKIT_CONFIG_FILE="$CONFIG_DIR/livekit.yaml"

SERVER_PID_FILE="$CONFIG_DIR/server.pid"
VOICE_PID_FILE="$CONFIG_DIR/voice.pid"

GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m'

pause_screen() {
    read -rp "Press Enter to continue..." _
}

say_info() {
    echo -e "${CYAN}$1${NC}"
}

say_ok() {
    echo -e "${GREEN}$1${NC}"
}

say_warn() {
    echo -e "${YELLOW}$1${NC}"
}

say_error() {
    echo -e "${RED}$1${NC}"
}

command_exists() {
    command -v "$1" >/dev/null 2>&1
}

check_uv() {
    if ! command_exists uv; then
        say_error "uv command-line tool is not installed."
        say_info "Please install uv to continue:"
        say_info "  brew install uv"
        say_info "  or run: curl -LsSf https://astral.sh/uv/install.sh | sh"
        exit 1
    fi
}

ensure_config_dir() {
    mkdir -p "$CONFIG_DIR"
}

random_token() {
    # macOS-safe random token generation
    LC_ALL=C tr -dc 'A-Za-z0-9' </dev/urandom 2>/dev/null | head -c 24
}

extract_domain_from_url() {
    local raw="$1"
    raw="${raw#ws://}"
    raw="${raw#wss://}"
    raw="${raw#http://}"
    raw="${raw#https://}"
    raw="${raw%%/*}"
    raw="${raw%%/*}"
    raw="${raw%%\?*}"
    raw="${raw%%#*}"
    raw="${raw%%:*}"
    echo "$raw"
}

normalize_voice_url() {
    local raw="$1"
    raw="${raw%% }"
    raw="${raw## }"
    if [ -z "$raw" ]; then
        echo ""
        return
    fi
    if [[ "$raw" != ws://* && "$raw" != wss://* ]]; then
        raw="wss://$raw"
    fi
    raw="${raw%/}"
    echo "$raw"
}

load_voice_config() {
    PLAYAURAL_VOICE_ENABLED=""
    PLAYAURAL_VOICE_PROVIDER=""
    PLAYAURAL_VOICE_URL=""
    PLAYAURAL_VOICE_API_KEY=""
    PLAYAURAL_VOICE_API_SECRET=""
    PLAYAURAL_VOICE_ROOM_PREFIX=""
    PLAYAURAL_VOICE_TOKEN_TTL_SECONDS=""
    if [ -f "$VOICE_ENV_FILE" ]; then
        set -a
        # shellcheck disable=SC1090
        . "$VOICE_ENV_FILE"
        set +a
    fi
}

write_voice_env() {
    local public_url="$1"
    local api_key="$2"
    local api_secret="$3"
    local room_prefix="$4"
    local ttl="$5"

    ensure_config_dir
    cat >"$VOICE_ENV_FILE" <<EOF
PLAYAURAL_VOICE_ENABLED=1
PLAYAURAL_VOICE_PROVIDER=livekit
PLAYAURAL_VOICE_URL=$public_url
PLAYAURAL_VOICE_API_KEY=$api_key
PLAYAURAL_VOICE_API_SECRET=$api_secret
PLAYAURAL_VOICE_ROOM_PREFIX=$room_prefix
PLAYAURAL_VOICE_TOKEN_TTL_SECONDS=$ttl
EOF
    chmod 600 "$VOICE_ENV_FILE"
}

write_livekit_config() {
    local public_url="$1"
    local api_key="$2"
    local api_secret="$3"
    local domain

    domain="$(extract_domain_from_url "$public_url")"
    if [ -z "$domain" ]; then
        say_error "Could not extract a domain from: $public_url"
        return 1
    fi

    ensure_config_dir
    cat >"$LIVEKIT_CONFIG_FILE" <<EOF
port: 7880
bind_addresses:
  - ""
log_level: info

rtc:
  tcp_port: 7881
  port_range_start: 50000
  port_range_end: 50100
  use_external_ip: false

turn:
  enabled: false

keys:
  $api_key: $api_secret
EOF
    chmod 640 "$LIVEKIT_CONFIG_FILE"
}

ensure_livekit_config_from_env() {
    load_voice_config
    if [ -z "${PLAYAURAL_VOICE_URL:-}" ] || [ -z "${PLAYAURAL_VOICE_API_KEY:-}" ] || [ -z "${PLAYAURAL_VOICE_API_SECRET:-}" ]; then
        say_error "Voice configuration is incomplete. Run the voice configuration step first."
        return 1
    fi
    write_livekit_config "$PLAYAURAL_VOICE_URL" "$PLAYAURAL_VOICE_API_KEY" "$PLAYAURAL_VOICE_API_SECRET"
}

install_environment() {
    check_uv
    say_info "Running uv sync to install/repair dependencies..."
    if uv sync --project "$SERVER_DIR"; then
        say_ok "Environment ready."
        return 0
    else
        say_error "uv sync failed."
        return 1
    fi
}

ensure_cli_environment() {
    check_uv
    # Quick verification or sync if .venv isn't present
    if [ ! -d "$SERVER_DIR/.venv" ]; then
        install_environment
    fi
}

run_account_cli() {
    local command_name="$1"
    local username="$2"
    local password="$3"
    shift 3

    PLAYAURAL_CLI_PW="$password" uv run --project "$SERVER_DIR" python "$SERVER_DIR/cli.py" "$command_name" "$username" "$@"
}

install_voice_server_binary() {
    if command_exists livekit-server; then
        say_ok "LiveKit server is already installed and available in PATH."
        return 0
    fi

    say_warn "LiveKit server not found."
    say_info "Would you like to install LiveKit server via Homebrew?"
    read -rp "Install livekit-server now? (y/N): " choice
    if [[ "${choice:-}" =~ ^[Yy]$ ]]; then
        if command_exists brew; then
            brew install livekit
            if command_exists livekit-server; then
                say_ok "LiveKit server installed successfully."
                return 0
            else
                say_error "Homebrew installation completed, but livekit-server command is still not found."
                return 1
            fi
        else
            say_error "Homebrew (brew) is not installed. Please install Homebrew first, or download LiveKit manually."
            return 1
        fi
    else
        say_error "LiveKit server is required for voice chat functionality."
        return 1
    fi
}

configure_voice_server() {
    local current_url current_key current_secret current_prefix current_ttl
    local input_url input_key input_secret input_prefix input_ttl
    local final_url final_domain

    ensure_config_dir
    load_voice_config

    current_url="${PLAYAURAL_VOICE_URL:-ws://127.0.0.1:7880}"
    current_key="${PLAYAURAL_VOICE_API_KEY:-devkey}"
    current_secret="${PLAYAURAL_VOICE_API_SECRET:-$(random_token)}"
    current_prefix="${PLAYAURAL_VOICE_ROOM_PREFIX:-playaural}"
    current_ttl="${PLAYAURAL_VOICE_TOKEN_TTL_SECONDS:-900}"

    echo "--- Configure Voice Server ---"
    read -rp "Public/Local Voice URL [$current_url]: " input_url
    read -rp "LiveKit API key [$current_key]: " input_key
    read -rp "LiveKit API secret [$current_secret]: " input_secret
    read -rp "Voice room prefix [$current_prefix]: " input_prefix
    read -rp "Token TTL seconds [$current_ttl]: " input_ttl

    final_url="$(normalize_voice_url "${input_url:-$current_url}")"
    input_key="${input_key:-$current_key}"
    input_secret="${input_secret:-$current_secret}"
    input_prefix="${input_prefix:-$current_prefix}"
    input_ttl="${input_ttl:-$current_ttl}"
    final_domain="$(extract_domain_from_url "$final_url")"

    if [ -z "$final_url" ] || [ -z "$final_domain" ]; then
        say_error "A valid Voice URL is required."
        return 1
    fi

    if ! [[ "$input_ttl" =~ ^[0-9]+$ ]]; then
        say_error "Token TTL must be a whole number of seconds."
        return 1
    fi

    write_voice_env "$final_url" "$input_key" "$input_secret" "$input_prefix" "$input_ttl"
    write_livekit_config "$final_url" "$input_key" "$input_secret" || return 1

    say_ok "Voice server configuration saved."
    echo "Voice URL:   $final_url"
    echo "Domain:      $final_domain"
    echo "Room prefix: $input_prefix"
    echo "Token TTL:   $input_ttl seconds"
}

change_voice_url() {
    local current_url current_key current_secret current_prefix current_ttl
    local input_url final_url final_domain

    if [ ! -f "$VOICE_ENV_FILE" ]; then
        say_warn "Voice configuration does not exist yet. Opening configuration wizard."
        configure_voice_server
        return
    fi

    load_voice_config
    current_url="${PLAYAURAL_VOICE_URL:-ws://127.0.0.1:7880}"
    current_key="${PLAYAURAL_VOICE_API_KEY:-devkey}"
    current_secret="${PLAYAURAL_VOICE_API_SECRET:-devsecret}"
    current_prefix="${PLAYAURAL_VOICE_ROOM_PREFIX:-playaural}"
    current_ttl="${PLAYAURAL_VOICE_TOKEN_TTL_SECONDS:-900}"

    echo "--- Change Voice Server URL ---"
    read -rp "New Voice URL [$current_url]: " input_url
    final_url="$(normalize_voice_url "${input_url:-$current_url}")"
    final_domain="$(extract_domain_from_url "$final_url")"

    if [ -z "$final_url" ] || [ -z "$final_domain" ]; then
        say_error "A valid Voice URL is required."
        return 1
    fi

    write_voice_env "$final_url" "$current_key" "$current_secret" "$current_prefix" "$current_ttl"
    write_livekit_config "$final_url" "$current_key" "$current_secret" || return 1

    if is_running "$SERVER_PID_FILE" >/dev/null; then
        restart_server_non_interactive
    fi
    if is_running "$VOICE_PID_FILE" >/dev/null; then
        restart_voice_server_non_interactive
    fi

    say_ok "Voice URL updated to $final_url"
}

show_voice_config() {
    local secret_mask="(not set)"

    load_voice_config

    if [ -n "${PLAYAURAL_VOICE_API_SECRET:-}" ]; then
        secret_mask="${PLAYAURAL_VOICE_API_SECRET:0:4}********"
    fi

    echo "--- Voice Configuration ---"
    echo "Enabled:      ${PLAYAURAL_VOICE_ENABLED:-0}"
    echo "Provider:     ${PLAYAURAL_VOICE_PROVIDER:-livekit}"
    echo "Voice URL:    ${PLAYAURAL_VOICE_URL:-not configured}"
    echo "API key:      ${PLAYAURAL_VOICE_API_KEY:-not configured}"
    echo "API secret:   $secret_mask"
    echo "Room prefix:  ${PLAYAURAL_VOICE_ROOM_PREFIX:-playaural}"
    echo "Token TTL:    ${PLAYAURAL_VOICE_TOKEN_TTL_SECONDS:-900}"
}

is_running() {
    local pid_file="$1"
    if [ -f "$pid_file" ]; then
        local pid
        pid=$(cat "$pid_file")
        if ps -p "$pid" >/dev/null 2>&1; then
            echo "$pid"
            return 0
        fi
    fi
    return 1
}

check_status() {
    local g_pid v_pid
    if g_pid=$(is_running "$SERVER_PID_FILE"); then
        echo -e "Game Server:  ${GREEN}RUNNING (PID: $g_pid)${NC}"
    else
        echo -e "Game Server:  ${RED}STOPPED${NC}"
    fi

    if v_pid=$(is_running "$VOICE_PID_FILE"); then
        echo -e "Voice Server: ${GREEN}RUNNING (PID: $v_pid)${NC}"
    else
        echo -e "Voice Server: ${RED}STOPPED${NC}"
    fi

    load_voice_config
    echo "Voice URL:    ${PLAYAURAL_VOICE_URL:-not configured}"

    # Get local Wi-Fi IP address
    local wifi_interface wifi_ip
    wifi_interface=$(networksetup -listallhardwareports 2>/dev/null | awk '/Wi-Fi|AirPort/ {found=1; next} found && /Device/ {print $2; exit}')
    if [ -n "$wifi_interface" ]; then
        wifi_ip=$(ipconfig getifaddr "$wifi_interface" 2>/dev/null)
        if [ -n "$wifi_ip" ]; then
            echo -e "Wi-Fi IP:     ${CYAN}$wifi_ip${NC} (Connect from iPhone/other devices)"
        else
            echo -e "Wi-Fi IP:     ${YELLOW}Not connected to Wi-Fi${NC}"
        fi
    else
        echo -e "Wi-Fi IP:     ${YELLOW}Wi-Fi interface not found${NC}"
    fi
}

start_server() {
    local pid
    if pid=$(is_running "$SERVER_PID_FILE"); then
        say_warn "Game server is already running (PID: $pid)."
        pause_screen
        return 0
    fi

    install_environment || return 1
    ensure_config_dir

    say_info "Starting game server..."
    if [ -f "$VOICE_ENV_FILE" ]; then
        set -a
        # shellcheck disable=SC1090
        . "$VOICE_ENV_FILE"
        set +a
    fi

    (cd "$SERVER_DIR" && uv run python main.py --host 0.0.0.0 --port 8000 > "$SERVER_DIR/server.log" 2>&1 & echo $! > "$SERVER_PID_FILE")
    sleep 2

    if pid=$(is_running "$SERVER_PID_FILE"); then
        say_ok "Game server started successfully (PID: $pid)."
    else
        say_error "Failed to start game server. Check logs: tail -n 20 $SERVER_DIR/server.log"
    fi
    pause_screen
}

stop_server() {
    local pid
    if pid=$(is_running "$SERVER_PID_FILE"); then
        say_info "Stopping game server (PID: $pid)..."
        kill "$pid"
        sleep 1
        rm -f "$SERVER_PID_FILE"
        say_ok "Game server stopped."
    else
        say_warn "Game server is not running."
    fi
    pause_screen
}

restart_server_non_interactive() {
    local pid
    if pid=$(is_running "$SERVER_PID_FILE"); then
        kill "$pid" 2>/dev/null || true
        rm -f "$SERVER_PID_FILE"
        sleep 1
    fi
    if [ -f "$VOICE_ENV_FILE" ]; then
        set -a
        # shellcheck disable=SC1090
        . "$VOICE_ENV_FILE"
        set +a
    fi
    (cd "$SERVER_DIR" && uv run python main.py --host 0.0.0.0 --port 8000 > "$SERVER_DIR/server.log" 2>&1 & echo $! > "$SERVER_PID_FILE")
}

restart_server() {
    install_environment || return 1
    ensure_config_dir
    say_info "Restarting game server..."
    restart_server_non_interactive
    sleep 2
    local pid
    if pid=$(is_running "$SERVER_PID_FILE"); then
        say_ok "Game server restarted successfully (PID: $pid)."
    else
        say_error "Failed to start game server. Check logs: tail -n 20 $SERVER_DIR/server.log"
    fi
    pause_screen
}

start_voice_server() {
    local pid
    if pid=$(is_running "$VOICE_PID_FILE"); then
        say_warn "Voice server is already running (PID: $pid)."
        pause_screen
        return 0
    fi

    install_voice_server_binary || { pause_screen; return 1; }

    if [ ! -f "$VOICE_ENV_FILE" ]; then
        say_warn "Voice is not configured yet."
        configure_voice_server || { pause_screen; return 1; }
    fi

    ensure_livekit_config_from_env || { pause_screen; return 1; }

    say_info "Starting voice server..."
    livekit-server --config "$LIVEKIT_CONFIG_FILE" > "$SERVER_DIR/voice.log" 2>&1 &
    echo $! > "$VOICE_PID_FILE"
    sleep 2

    if pid=$(is_running "$VOICE_PID_FILE"); then
        say_ok "Voice server started successfully (PID: $pid)."
    else
        say_error "Failed to start voice server. Check logs: tail -n 20 $SERVER_DIR/voice.log"
    fi
    pause_screen
}

stop_voice_server() {
    local pid
    if pid=$(is_running "$VOICE_PID_FILE"); then
        say_info "Stopping voice server (PID: $pid)..."
        kill "$pid"
        sleep 1
        rm -f "$VOICE_PID_FILE"
        say_ok "Voice server stopped."
    else
        say_warn "Voice server is not running."
    fi
    pause_screen
}

restart_voice_server_non_interactive() {
    local pid
    if pid=$(is_running "$VOICE_PID_FILE"); then
        kill "$pid" 2>/dev/null || true
        rm -f "$VOICE_PID_FILE"
        sleep 1
    fi
    livekit-server --config "$LIVEKIT_CONFIG_FILE" > "$SERVER_DIR/voice.log" 2>&1 &
    echo $! > "$VOICE_PID_FILE"
}

restart_voice_server() {
    install_voice_server_binary || { pause_screen; return 1; }
    if [ ! -f "$VOICE_ENV_FILE" ]; then
        say_warn "Voice is not configured yet."
        configure_voice_server || { pause_screen; return 1; }
    fi
    ensure_livekit_config_from_env || { pause_screen; return 1; }

    say_info "Restarting voice server..."
    restart_voice_server_non_interactive
    sleep 2
    local pid
    if pid=$(is_running "$VOICE_PID_FILE"); then
        say_ok "Voice server restarted successfully (PID: $pid)."
    else
        say_error "Failed to start voice server. Check logs: tail -n 20 $SERVER_DIR/voice.log"
    fi
    pause_screen
}

view_logs() {
    if [ -f "$SERVER_DIR/server.log" ]; then
        echo "Showing game server logs (Ctrl+C to exit)..."
        tail -n 50 -f "$SERVER_DIR/server.log"
    else
        say_warn "No game server logs found at $SERVER_DIR/server.log"
        pause_screen
    fi
}

view_voice_logs() {
    if [ -f "$SERVER_DIR/voice.log" ]; then
        echo "Showing voice server logs (Ctrl+C to exit)..."
        tail -n 50 -f "$SERVER_DIR/voice.log"
    else
        say_warn "No voice server logs found at $SERVER_DIR/voice.log"
        pause_screen
    fi
}

clear_logs() {
    say_info "Cleaning log files..."
    rm -f "$SERVER_DIR/server.log" "$SERVER_DIR/voice.log"

    say_info "Cleaning Python cache directories..."
    find "$SERVER_DIR" -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null || true

    say_ok "Logs and cache directories were cleaned."
    pause_screen
}

create_user() {
    local u_name u_pass result

    ensure_cli_environment || return 1

    echo "--- Create New User ---"
    read -rp "Enter username: " u_name
    if [ -z "$u_name" ]; then
        say_error "Username cannot be empty."
        pause_screen
        return 1
    fi

    read -rsp "Enter password: " u_pass
    echo
    if [ -z "$u_pass" ]; then
        say_error "Password cannot be empty."
        pause_screen
        return 1
    fi

    if run_account_cli create-user "$u_name" "$u_pass"; then
        say_ok "Create user command completed."
        result=0
    else
        say_error "Create user command failed."
        result=1
    fi
    pause_screen
    return "$result"
}

reset_password() {
    local u_name u_pass result

    ensure_cli_environment || return 1

    echo "--- Reset Password ---"
    read -rp "Enter username: " u_name
    if [ -z "$u_name" ]; then
        say_error "Username cannot be empty."
        pause_screen
        return 1
    fi

    read -rsp "Enter new password: " u_pass
    echo
    if [ -z "$u_pass" ]; then
        say_error "Password cannot be empty."
        pause_screen
        return 1
    fi

    if run_account_cli reset-password "$u_name" "$u_pass"; then
        say_ok "Password reset command completed."
        result=0
    else
        say_error "Password reset command failed."
        result=1
    fi
    pause_screen
    return "$result"
}

show_menu() {
    clear
    echo "=================================================="
    echo " PlayAural Server and Voice Manager (macOS & uv)"
    echo " Repo:  $REPO_DIR"
    echo " Server: $SERVER_DIR"
    echo "=================================================="
    check_status
    echo "=================================================="
    echo " 1. Start Game Server"
    echo " 2. Stop Game Server"
    echo " 3. Restart Game Server"
    echo " 4. View Game Logs"
    echo " 5. Clear Logs and Python Cache"
    echo " 6. Create User"
    echo " 7. Reset User Password"
    echo " 8. Install or Repair Game Environment"
    echo " 9. Install or Update Voice Server"
    echo "10. Configure Voice Server"
    echo "11. Change Voice Server URL"
    echo "12. Start Voice Server"
    echo "13. Stop Voice Server"
    echo "14. Restart Voice Server"
    echo "15. View Voice Logs"
    echo "16. Show Voice Configuration"
    echo " 0. Exit"
    echo "=================================================="
    read -rp "Choose an option: " choice
}

ensure_config_dir

while true; do
    show_menu
    case "${choice:-}" in
        1) start_server ;;
        2) stop_server ;;
        3) restart_server ;;
        4) view_logs ;;
        5) clear_logs ;;
        6) create_user ;;
        7) reset_password ;;
        8) install_environment; pause_screen ;;
        9) install_voice_server_binary; pause_screen ;;
        10) configure_voice_server; pause_screen ;;
        11) change_voice_url; pause_screen ;;
        12) start_voice_server ;;
        13) stop_voice_server ;;
        14) restart_voice_server ;;
        15) view_voice_logs ;;
        16) show_voice_config; pause_screen ;;
        0) exit 0 ;;
        *) say_error "Invalid option."; pause_screen ;;
    esac
done
