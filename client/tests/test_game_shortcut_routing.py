from pathlib import Path


def _source() -> str:
    source_path = Path(__file__).resolve().parents[1] / "ui" / "main_window.py"
    return source_path.read_text(encoding="utf-8")


def test_modified_arrow_keys_are_routed_as_game_keybinds() -> None:
    source = _source()

    assert (
        "modified_arrow = event.ControlDown() or event.ShiftDown() or event.AltDown()"
        in source
    )
    for key in ("UP", "DOWN", "LEFT", "RIGHT"):
        block_start = source.index(f"key_code == wx.WXK_{key}")
        block = source[block_start : block_start + 250]
        assert "or modified_arrow" in block


def test_ctrl_backspace_is_not_normalized_to_escape() -> None:
    source = _source()

    ctrl_backspace = source.index("elif key_code == wx.WXK_BACK and event.ControlDown()")
    escape_or_back = source.index("elif key_code == wx.WXK_ESCAPE or key_code == wx.WXK_BACK")

    assert ctrl_backspace < escape_or_back
    assert 'key_name = "backspace"' in source[ctrl_backspace:escape_or_back]
