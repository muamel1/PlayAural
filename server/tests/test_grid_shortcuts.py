"""Regression tests for documented grid-game keyboard shortcuts."""

from pathlib import Path

from ..games.backgammon.game import BackgammonGame, BackgammonOptions
from ..games.senet.game import SenetGame
from ..messages.localization import Localization
from ..users.test_user import MockUser


_locales_dir = Path(__file__).parent.parent / "locales"
Localization.init(_locales_dir)


def _message_types(user: MockUser) -> list[str]:
    return [message.type for message in user.messages]


def _last_update_selection_id(user: MockUser) -> str | None:
    for message in reversed(user.messages):
        if message.type == "update_menu":
            return message.data.get("selection_id")
    return None


def test_backgammon_ctrl_navigation_updates_focus_without_full_rebuild() -> None:
    game = BackgammonGame(options=BackgammonOptions())
    game.setup_keybinds()
    user = MockUser("Alice", uuid="backgammon-shortcut-1")
    player = game.add_player("Alice", user)
    game.add_player("Bob", MockUser("Bob", uuid="backgammon-shortcut-2"))
    game.host = "Alice"
    game.on_start()

    game.game_state.turn_phase = "moving"
    game.game_state.current_color = player.color
    game.game_state.dice = [3, 1]
    game.game_state.dice_used = [False, False]
    game.rebuild_player_menu(player)
    user.clear_messages()

    game.handle_event(player, {"type": "keybind", "key": "down", "control": True})

    assert _last_update_selection_id(user) is not None
    assert _last_update_selection_id(user).startswith("point_")
    assert "show_menu" not in _message_types(user)


def test_backgammon_ctrl_backspace_deselects_selected_checker() -> None:
    game = BackgammonGame(options=BackgammonOptions())
    game.setup_keybinds()
    user = MockUser("Alice", uuid="backgammon-deselect-1")
    player = game.add_player("Alice", user)
    game.add_player("Bob", MockUser("Bob", uuid="backgammon-deselect-2"))
    game.host = "Alice"
    game.on_start()

    game.game_state.turn_phase = "moving"
    game.game_state.current_color = player.color
    game.game_state.selected_source = 23
    user.clear_messages()

    game.handle_event(player, {"type": "keybind", "key": "backspace", "control": True})

    assert game.game_state.selected_source is None
    assert "show_menu" in _message_types(user)


def test_senet_ctrl_navigation_updates_focus_without_full_rebuild() -> None:
    game = SenetGame()
    game.setup_keybinds()
    user = MockUser("Alice", uuid="senet-shortcut-1")
    player = game.add_player("Alice", user)
    game.add_player("Bob", MockUser("Bob", uuid="senet-shortcut-2"))
    game.host = "Alice"
    game.on_start()

    game.game_state.turn_phase = "moving"
    game.game_state.current_player_num = player.player_num
    game.game_state.current_roll = 1
    game.rebuild_player_menu(player)
    user.clear_messages()

    game.handle_event(player, {"type": "keybind", "key": "right", "control": True})

    assert _last_update_selection_id(user) is not None
    assert _last_update_selection_id(user).startswith("sq_")
    assert "show_menu" not in _message_types(user)
