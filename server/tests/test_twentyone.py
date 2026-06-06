"""Tests for 21 (Survival Rules)."""

from ..game_utils.options import IntOption
from ..games.twentyone.game import TwentyOneOptions


def test_twentyone_documented_options_are_host_configurable() -> None:
    metas = TwentyOneOptions().get_option_metas()

    expected_ranges = {
        "starting_health": (10, 1, 100),
        "base_bet": (1, 0, 50),
        "starting_modifiers_per_round": (1, 0, 10),
        "draw_modifier_chance_percent": (35, 0, 100),
        "deck_count": (1, 1, 10),
    }

    assert set(expected_ranges).issubset(metas)
    for option_name, (default, min_val, max_val) in expected_ranges.items():
        meta = metas[option_name]
        assert isinstance(meta, IntOption)
        assert meta.default == default
        assert meta.min_val == min_val
        assert meta.max_val == max_val
