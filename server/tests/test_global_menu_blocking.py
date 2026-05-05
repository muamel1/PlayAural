from types import SimpleNamespace

import pytest

from ..core.server import Server
from ..games.pig.game import PigGame
from ..messages.localization import Localization
from ..users.test_user import MockUser


def _make_playing_game_server() -> tuple[Server, MockUser, MockUser, object, object, object]:
    server = Server(db_path=":memory:")
    server._db.connect()

    host = MockUser("Alice", uuid="p1")
    guest = MockUser("Bob", uuid="p2")
    server._users = {host.username: host, guest.username: guest}

    table = server._tables.create_table("pig", host.username, host)
    game = PigGame()
    table.game = game
    game._table = table
    game.initialize_lobby(host.username, host)

    table.add_member(guest.username, guest, as_spectator=False)
    game.add_player(guest.username, guest)
    game.on_start()

    server._user_states[host.username] = {"menu": "in_game", "table_id": table.table_id}
    server._user_states[guest.username] = {"menu": "in_game", "table_id": table.table_id}

    host_player = game.get_player_by_id(host.uuid)
    guest_player = game.get_player_by_id(guest.uuid)
    assert host_player is not None
    assert guest_player is not None
    return server, host, guest, table, game, host_player


@pytest.mark.asyncio
async def test_options_submenu_selection_while_playing_routes_to_server() -> None:
    server, host, _guest, _table, _game, _host_player = _make_playing_game_server()
    server._sync_pref_to_client = lambda *args, **kwargs: None
    try:
        original_turn_sound = host.preferences.play_turn_sound

        await server._handle_open_options(SimpleNamespace(username=host.username))
        await server._handle_menu(
            SimpleNamespace(username=host.username),
            {
                "type": "menu",
                "menu_id": "options_menu",
                "selection_id": "options_audio",
            },
        )
        assert server._user_states[host.username]["menu"] == "options_audio_submenu"

        await server._handle_menu(
            SimpleNamespace(username=host.username),
            {
                "type": "menu",
                "menu_id": "options_audio_submenu",
                "selection_id": "turn_sound",
            },
        )

        assert host.preferences.play_turn_sound is not original_turn_sound
        assert server._user_states[host.username]["menu"] == "options_audio_submenu"
        assert "options_audio_submenu" in host.menus
    finally:
        server._db.close()


@pytest.mark.asyncio
async def test_options_submenu_blocks_game_menu_rebuild_while_playing() -> None:
    server, host, _guest, _table, game, host_player = _make_playing_game_server()
    try:
        await server._handle_open_options(SimpleNamespace(username=host.username))
        await server._handle_menu(
            SimpleNamespace(username=host.username),
            {
                "type": "menu",
                "menu_id": "options_menu",
                "selection_id": "options_game",
            },
        )
        assert server._user_states[host.username]["menu"] == "options_game_submenu"

        host.clear_messages()
        game.rebuild_player_menu(host_player)

        assert not any(
            message.type == "show_menu" and message.data.get("menu_id") == "turn_menu"
            for message in host.messages
        )
        assert server._user_states[host.username]["menu"] == "options_game_submenu"
    finally:
        server._db.close()


@pytest.mark.asyncio
async def test_open_options_is_idempotent_inside_options_flow() -> None:
    server, host, _guest, _table, _game, _host_player = _make_playing_game_server()
    try:
        await server._handle_open_options(SimpleNamespace(username=host.username))
        await server._handle_menu(
            SimpleNamespace(username=host.username),
            {
                "type": "menu",
                "menu_id": "options_menu",
                "selection_id": "options_audio",
            },
        )
        state_before = dict(server._user_states[host.username])

        await server._handle_open_options(SimpleNamespace(username=host.username))

        assert server._user_states[host.username] == state_before
    finally:
        server._db.close()


@pytest.mark.asyncio
async def test_open_options_blocked_while_status_box_open() -> None:
    server, host, _guest, _table, game, host_player = _make_playing_game_server()
    try:
        host.clear_messages()
        game.status_box(host_player, ["Turn summary"])
        assert host_player.id in game._status_box_open

        await server._handle_open_options(SimpleNamespace(username=host.username))

        assert server._user_states[host.username]["menu"] == "in_game"
        assert "options_menu" not in host.menus
        assert "status_box" in host.menus

        game.handle_event(host_player, {"type": "menu", "menu_id": "status_box", "selection_id": "status_line"})

        assert host_player.id not in game._status_box_open
        assert "status_box" not in host.menus
        assert "turn_menu" in host.menus

        await server._handle_open_options(SimpleNamespace(username=host.username))

        assert server._user_states[host.username]["menu"] == "options_menu"
        assert "options_menu" in host.menus
    finally:
        server._db.close()


@pytest.mark.asyncio
async def test_open_friends_blocked_while_status_box_open() -> None:
    server, host, _guest, _table, game, host_player = _make_playing_game_server()
    try:
        host.clear_messages()
        game.status_box(host_player, ["Score summary"])
        assert host_player.id in game._status_box_open

        await server._handle_open_friends_hub(SimpleNamespace(username=host.username))

        assert server._user_states[host.username]["menu"] == "in_game"
        assert "friends_hub_menu" not in host.menus
        assert "status_box" in host.menus

        game.handle_event(host_player, {"type": "menu", "menu_id": "status_box", "selection_id": "status_line"})

        assert host_player.id not in game._status_box_open

        await server._handle_open_friends_hub(SimpleNamespace(username=host.username))

        assert server._user_states[host.username]["menu"] == "friends_hub_menu"
        assert "friends_hub_menu" in host.menus
    finally:
        server._db.close()


@pytest.mark.asyncio
async def test_server_editbox_escape_cancels_without_validation_error() -> None:
    server = Server(db_path=":memory:")
    server._db.connect()
    try:
        user = MockUser("Alice", uuid="p1")
        server._users[user.username] = user
        server._user_states[user.username] = {"menu": "options_menu"}
        server._enter_input_state(user, "music_volume_input")

        await server._on_client_message(
            SimpleNamespace(username=user.username, authenticated=True),
            {"type": "escape", "menu_id": "music_volume_input"},
        )

        assert server._user_states[user.username]["menu"] == "options_menu"
        assert "options_menu" in user.menus
        assert user.get_last_spoken() != Localization.get(user.locale, "invalid-volume")
    finally:
        server._db.close()


@pytest.mark.asyncio
async def test_blank_option_editbox_submission_cancels_without_validation_error() -> None:
    server = Server(db_path=":memory:")
    server._db.connect()
    try:
        user = MockUser("Alice", uuid="p1")
        server._users[user.username] = user
        server._user_states[user.username] = {"menu": "options_menu"}
        server._enter_input_state(user, "music_volume_input")

        await server._on_client_message(
            SimpleNamespace(username=user.username, authenticated=True),
            {
                "type": "editbox",
                "input_id": "music_volume_input",
                "text": "",
            },
        )

        assert server._user_states[user.username]["menu"] == "options_menu"
        assert "options_menu" in user.menus
        assert user.get_last_spoken() != Localization.get(user.locale, "invalid-volume")
    finally:
        server._db.close()


def test_game_action_input_escape_cancels_pending_editbox() -> None:
    server, _host, _guest, _table, game, host_player = _make_playing_game_server()
    try:
        game._pending_actions[host_player.id] = "roll"

        game.handle_event(
            host_player,
            {"type": "escape", "menu_id": "action_input_editbox"},
        )

        assert host_player.id not in game._pending_actions
        assert "turn_menu" in game.get_user(host_player).menus
    finally:
        server._db.close()


def test_game_action_input_escape_cancels_pending_menu() -> None:
    server, _host, _guest, _table, game, host_player = _make_playing_game_server()
    try:
        game._pending_actions[host_player.id] = "roll"

        game.handle_event(
            host_player,
            {"type": "escape", "menu_id": "action_input_menu"},
        )

        assert host_player.id not in game._pending_actions
        assert "turn_menu" in game.get_user(host_player).menus
    finally:
        server._db.close()
