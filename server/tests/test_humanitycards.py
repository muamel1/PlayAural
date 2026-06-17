"""Tests for Cards Against Humanity polish and audio routing."""

from pathlib import Path

from ..games.humanitycards.game import HumanityCardsGame, HumanityCardsOptions
from ..messages.localization import Localization
from ..users.test_user import MockUser


_locales_dir = Path(__file__).parent.parent / "locales"
Localization.init(_locales_dir)


def _add_three_players(game: HumanityCardsGame):
    p1 = game.add_player("Alice", MockUser("Alice", uuid="hc-sound-1"))
    p2 = game.add_player("Bob", MockUser("Bob", uuid="hc-sound-2"))
    judge = game.add_player("Carol", MockUser("Carol", uuid="hc-sound-3"))
    game.host = "Alice"
    return p1, p2, judge


def _white_card(card_id: int, text: str = "a good answer") -> dict:
    return {"text": text, "pack": "test", "id": card_id}


def test_humanitycards_selection_sounds_use_humanitycards_pack() -> None:
    game = HumanityCardsGame()
    game.setup_keybinds()
    player, _, _ = _add_three_players(game)
    user = game.get_user(player)
    assert user is not None

    game.status = "playing"
    game.phase = "submitting"
    game.judge_indices = [2]
    game.current_black_card = {"text": "_", "pick": 1, "pack": "test"}
    player.hand = [_white_card(1)]

    game.execute_action(player, "toggle_card_0")
    game.execute_action(player, "toggle_card_0")

    assert user.get_sounds_played()[-2:] == [
        "game_humanitycards/cardselect.ogg",
        "game_humanitycards/cardunselect.ogg",
    ]


def test_humanitycards_submit_and_judging_sounds_use_humanitycards_pack(monkeypatch) -> None:
    monkeypatch.setattr("server.games.humanitycards.game.random.randint", lambda a, b: a)
    game = HumanityCardsGame()
    game.setup_keybinds()
    player, other_submitter, _ = _add_three_players(game)
    user = game.get_user(player)
    assert user is not None

    game.status = "playing"
    game.phase = "submitting"
    game.judge_indices = [2]
    game.current_black_card = {"text": "_", "pick": 1, "pack": "test"}
    player.hand = [_white_card(1)]
    player.selected_indices = [0]
    other_submitter.submitted_cards = ["already in"]

    game.execute_action(player, "submit_cards")

    sounds = user.get_sounds_played()
    assert "game_humanitycards/submit1.ogg" in sounds
    assert "game_humanitycards/judging.ogg" in sounds


def test_humanitycards_judging_turn_sound_respects_preference(monkeypatch) -> None:
    monkeypatch.setattr("server.games.humanitycards.game.random.shuffle", lambda items: None)
    game = HumanityCardsGame()
    game.setup_keybinds()
    player, other_submitter, judge = _add_three_players(game)
    judge_user = game.get_user(judge)
    assert judge_user is not None

    game.status = "playing"
    game.phase = "submitting"
    game.judge_indices = [2]
    game.current_black_card = {"text": "_", "pick": 1, "pack": "test"}
    player.submitted_cards = ["first answer"]
    other_submitter.submitted_cards = ["second answer"]

    judge_user.preferences.play_turn_sound = True
    game._start_judging()

    assert judge_user.get_sounds_played() == ["game_humanitycards/judging.ogg", "turn.ogg"]

    judge_user.clear_messages()
    game.phase = "submitting"
    game.submissions = []
    judge_user.preferences.play_turn_sound = False

    game._start_judging()

    assert judge_user.get_sounds_played() == ["game_humanitycards/judging.ogg"]


def test_humanitycards_judge_pick_and_win_sounds_use_humanitycards_pack(monkeypatch) -> None:
    monkeypatch.setattr("server.games.humanitycards.game.random.randint", lambda a, b: a)
    game = HumanityCardsGame(options=HumanityCardsOptions(winning_score=1))
    game.setup_keybinds()
    player, _, judge = _add_three_players(game)
    judge_user = game.get_user(judge)
    assert judge_user is not None

    game.status = "playing"
    game.phase = "judging"
    game.judge_indices = [2]
    game.current_black_card = {"text": "_", "pick": 1, "pack": "test"}
    game.submissions = [{"player_id": player.id, "cards": ["the winner"]}]
    game.submission_order = [0]

    game.execute_action(judge, "judge_pick_0")

    sounds = judge_user.get_sounds_played()
    assert "game_humanitycards/judgechoice1.ogg" in sounds
    assert "game_humanitycards/win.ogg" in sounds


def test_humanitycards_prestart_blocks_too_many_judges() -> None:
    game = HumanityCardsGame(options=HumanityCardsOptions(num_judges=3))
    _add_three_players(game)

    assert (
        "hc-error-too-many-judges",
        {"judges": 3, "players": 3, "required": 4},
    ) in game.prestart_validate()


def test_humanitycards_judge_announcement_uses_personal_context() -> None:
    game = HumanityCardsGame(options=HumanityCardsOptions(num_judges=2))
    game.setup_keybinds()
    judge, _, _ = _add_three_players(game)
    judge_user = game.get_user(judge)
    assert judge_user is not None
    game.status = "playing"
    game.judge_indices = [0, 2]

    game._action_whose_judge(judge, "whose_judge")

    assert judge_user.get_last_spoken() == "You and Carol are the Card Czars this round."


def test_humanitycards_disabled_submit_speaks_parameterized_reason() -> None:
    game = HumanityCardsGame()
    game.setup_keybinds()
    player, _, _ = _add_three_players(game)
    user = game.get_user(player)
    assert user is not None

    game.status = "playing"
    game.phase = "submitting"
    game.judge_indices = [2]
    game.current_black_card = {"text": "_ and _", "pick": 2, "pack": "test"}
    player.hand = [_white_card(1), _white_card(2)]
    player.selected_indices = [0]

    game.execute_action(player, "submit_cards")

    assert user.get_spoken_messages()[-1] == "You need to select exactly 2 cards."


def test_humanitycards_submit_and_reveal_use_personal_broadcasts(monkeypatch) -> None:
    monkeypatch.setattr("server.games.humanitycards.game.random.randint", lambda a, b: a)
    game = HumanityCardsGame(options=HumanityCardsOptions(winning_score=2))
    game.setup_keybinds()
    player, other, judge = _add_three_players(game)
    player_user = game.get_user(player)
    other_user = game.get_user(other)
    judge_user = game.get_user(judge)
    assert player_user is not None
    assert other_user is not None
    assert judge_user is not None

    game.status = "playing"
    game.phase = "submitting"
    game.judge_indices = [2]
    game.current_black_card = {"text": "_", "pick": 1, "pack": "test"}
    player.hand = [_white_card(1, "winner")]
    other.hand = [_white_card(2, "runner up")]
    player.selected_indices = [0]
    other.submitted_cards = ["runner up"]

    game.execute_action(player, "submit_cards")

    assert "You submitted your cards." in player_user.get_spoken_messages()
    assert "Alice submitted their cards." in other_user.get_spoken_messages()
    assert "Alice submitted their cards." in judge_user.get_spoken_messages()

    game.submission_order = [0, 1]
    game.execute_action(judge, "judge_pick_0")

    assert "You win the round! Your score is now 1." in player_user.get_spoken_messages()
    assert "Your winning answer: winner" in player_user.get_spoken_messages()
    assert "Alice wins the round! Score: 1." in judge_user.get_spoken_messages()
    assert "Alice's winning answer: winner" in judge_user.get_spoken_messages()
