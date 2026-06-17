from pathlib import Path

import pytest

from server.core.server import Server
from server.documentation.manager import DocumentationManager
from server.messages.localization import Localization
from server.users.preferences import UserPreferences
from server.users.test_user import MockUser


@pytest.fixture
def mock_server():
    server = Server(
        db_path=":memory:",
        locales_dir=Path(__file__).resolve().parents[1] / "locales",
    )
    server._db.connect()
    server._db.initialize_trust_levels()
    Localization.init(Path(__file__).resolve().parents[1] / "locales")
    Localization.preload_bundles()
    try:
        yield server
    finally:
        server._db.close()


def test_game_category_filter_preference_defaults_and_round_trips() -> None:
    prefs = UserPreferences()
    data = prefs.to_dict()

    assert prefs.game_category_filter == "all"
    assert data["game_category_filter"] == "all"
    assert UserPreferences.from_dict({}).game_category_filter == "all"
    assert (
        UserPreferences.from_dict({"game_category_filter": "poker"}).game_category_filter
        == "poker"
    )


def _menu_ids(user: MockUser, menu_id: str) -> list[str]:
    items = user.get_current_menu_items(menu_id) or []
    return [item.id for item in items if hasattr(item, "id")]


@pytest.mark.asyncio
async def test_game_category_filter_toggle_and_selection(mock_server) -> None:
    from server import games as registered_games
    from server.games.registry import GameRegistry

    assert registered_games.GameRegistry is GameRegistry

    user = MockUser("UserA")
    mock_server._users[user.username] = user
    mock_server._show_games_list_menu(user)

    assert user.preferences.game_category_filter == "all"

    await mock_server._handle_games_selection(user, "toggle_category_filter", {})
    assert mock_server._user_states[user.username]["menu"] == "game_category_filter_menu"

    await mock_server._handle_game_category_filter_selection(user, "category_poker")

    assert user.preferences.game_category_filter == "poker"
    assert mock_server._user_states[user.username]["menu"] == "games_menu"

    menu_items = user.get_current_menu_items("games_menu") or []
    item_ids = [item.id for item in menu_items if hasattr(item, "id")]
    item_text = " ".join(item.text for item in menu_items if hasattr(item, "text"))

    assert item_ids[0] == "toggle_category_filter"
    assert "game_holdem" in item_ids
    assert "game_pig" not in item_ids
    assert "Category: Poker Games" in item_text


def test_play_category_filter_does_not_leak_into_documentation(mock_server) -> None:
    user = MockUser("UserA")
    mock_server._users[user.username] = user
    user.preferences.game_category_filter = "poker"

    mock_server._show_game_rules_menu(user)

    item_ids = _menu_ids(user, "doc_games_menu")
    assert "games/pig" in item_ids
    assert "games/holdem" in item_ids


def test_play_category_filter_does_not_leak_into_leaderboards(mock_server) -> None:
    user = MockUser("UserA")
    mock_server._users[user.username] = user
    user.preferences.game_category_filter = "poker"

    mock_server._show_leaderboards_menu(user)

    item_ids = _menu_ids(user, "leaderboards_menu")
    assert "lb_pig" in item_ids


def test_play_category_filter_does_not_leak_into_personal_stats(mock_server) -> None:
    user = MockUser("UserA")
    mock_server._users[user.username] = user
    user.preferences.game_category_filter = "poker"
    cursor = mock_server._db._conn.cursor()
    cursor.execute(
        """
        INSERT INTO player_game_stats (player_id, game_type, stat_key, stat_value)
        VALUES (?, 'pig', 'games_played', 1)
        """,
        (user.uuid,),
    )
    cursor.execute(
        """
        INSERT INTO player_game_stats (player_id, game_type, stat_key, stat_value)
        VALUES (?, 'holdem', 'games_played', 1)
        """,
        (user.uuid,),
    )
    mock_server._db._conn.commit()

    mock_server._show_my_stats_menu(user)

    item_ids = _menu_ids(user, "my_stats_menu")
    assert "stats_pig" in item_ids
    assert "stats_holdem" in item_ids


def test_documentation_manager_sanitizes_paths_and_markdown() -> None:
    manager = DocumentationManager.get_instance()
    manager.clear_cache()

    assert manager.get_document("../secrets", "en") is None
    assert manager.get_document("intro", "../vi") is not None
    assert manager.normalize_doc_id("games\\scopa.md") == "games/scopa"

    lines = manager.render_markdown_lines(
        "\\* \\*\\*Desktop client:\\*\\* Best option.\n"
        "1\\. \\*\\*Open Play:\\*\\* Browse games."
    )

    assert lines == [
        "Desktop client: Best option.",
        "1. Open Play: Browse games.",
    ]


def test_document_viewer_uses_clean_read_only_lines(mock_server) -> None:
    user = MockUser("UserA")
    mock_server._users[user.username] = user

    mock_server._show_document_content(user, "intro")

    items = user.get_current_menu_items("doc_viewer") or []
    assert items[0].text == "Welcome to PlayAural"
    assert items[0].id is None
    assert items[-1].id == "back"


@pytest.mark.asyncio
async def test_game_category_filter_back_does_not_change_selection(mock_server) -> None:
    user = MockUser("UserA")
    mock_server._users[user.username] = user
    user.preferences.game_category_filter = "dice"
    mock_server._show_games_list_menu(user)

    await mock_server._handle_games_selection(user, "toggle_category_filter", {})
    await mock_server._handle_game_category_filter_selection(user, "back")

    assert user.preferences.game_category_filter == "dice"
    assert mock_server._user_states[user.username]["menu"] == "games_menu"
