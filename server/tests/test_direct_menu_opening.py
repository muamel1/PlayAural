from types import SimpleNamespace
import pytest

from ..core.server import Server
from ..games.pig.game import PigGame
from ..users.test_user import MockUser

def _user_state(server, username: str) -> dict:
    return server._user_states.get(username, {})

def _current_menu(server, username: str) -> str:
    return _user_state(server, username).get("menu", "")

def _make_playing_game_server() -> tuple[Server, MockUser, MockUser, object, object, object]:
    server = Server(db_path=":memory:")
    server._db.connect()

    host_record = server._db.create_user("Alice", "hash", trust_level=1)
    guest_record = server._db.create_user("Bob", "hash", trust_level=1)

    host = MockUser("Alice", uuid=host_record.uuid)
    guest = MockUser("Bob", uuid=guest_record.uuid)
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
async def test_direct_menu_opening_from_game_and_back(tmp_path) -> None:
    server, host, _guest, _table, _game, _host_player = _make_playing_game_server()
    server._sync_pref_to_client = lambda *args, **kwargs: None
    try:
        # 1. Test open_profile
        client_mock = SimpleNamespace(username=host.username, authenticated=True)
        await server._on_client_message(client_mock, {"type": "open_profile"})
        assert _current_menu(server, host.username) == "profile_menu"

        # Go back -> should restore the game state
        await server._on_client_message(
            client_mock,
            {"type": "menu", "menu_id": "profile_menu", "selection_id": "back"}
        )
        assert _current_menu(server, host.username) == "in_game"

        # 2. Test open_stats
        await server._on_client_message(client_mock, {"type": "open_stats"})
        assert _current_menu(server, host.username) == "my_stats_menu"

        # Go back -> should restore the game state
        await server._on_client_message(
            client_mock,
            {"type": "menu", "menu_id": "my_stats_menu", "selection_id": "back"}
        )
        assert _current_menu(server, host.username) == "in_game"

        # 3. Test open_online_users
        await server._on_client_message(client_mock, {"type": "open_online_users"})
        assert _current_menu(server, host.username) == "online_users"

        # Go back -> should restore the game state
        await server._on_client_message(
            client_mock,
            {"type": "menu", "menu_id": "online_users", "selection_id": "back"}
        )
        assert _current_menu(server, host.username) == "in_game"

    finally:
        server._db.close()
