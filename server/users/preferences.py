"""User preferences for PlayAural."""

from dataclasses import dataclass, field
from enum import Enum
from typing import Any


class DiceKeepingStyle(Enum):
    """Dice keeping style preference."""

    INDEX_BASED = "index_based"  # Dice indexes (1-5 keys)
    VALUE_BASED = "value_based"  # Dice values (1-6 keys)

    @classmethod
    def from_str(cls, value: str) -> "DiceKeepingStyle":
        """Convert string to enum, defaulting to INDEX_BASED."""
        try:
            return cls(value)
        except ValueError:
            return cls.INDEX_BASED


@dataclass
class UserPreferences:
    """User preferences that persist across sessions."""

    # Sound preferences
    play_turn_sound: bool = True  # Play sound when it's your turn

    # Audio preferences
    music_volume: int = 10
    ambience_volume: int = 20
    voice_volume: int = 80  # 10-100 range (not 0 to avoid complete muting)
    desktop_audio_input_device_id: str = ""
    desktop_audio_input_device_name: str = ""

    # Web speech preferences
    speech_mode: str = "aria"  # "aria" or "web_speech"
    speech_rate: int = 100
    speech_voice: str = ""  # Voice URI

    # Mobile speech preferences
    mobile_tts_engine: str = "system"
    mobile_tts_rate: int = 100
    mobile_tts_voice: str = ""  # Expo Speech voice identifier

    # Social preferences
    mute_global_chat: bool = False
    mute_table_chat: bool = False
    notify_table_created: bool = True  # Notify when a new table is created
    notify_user_presence: bool = False # Notify when normal users connect/disconnect
    notify_friend_presence: bool = True # Notify when accepted friends connect/disconnect

    # Interface preferences
    invert_multiline_enter_behavior: bool = False
    play_typing_sounds: bool = True
    active_tables_filter: str = "all"  # "all", "waiting", "playing"
    game_category_filter: str = "all"  # "all" or a game category id

    # Gameplay preferences
    allow_custom_bot_names: bool = False
    confirm_destructive_actions: bool = True  # Confirm risky/irreversible actions

    # Dice game preferences
    clear_kept_on_roll: bool = False  # Clear kept dice after rolling
    dice_keeping_style: DiceKeepingStyle = field(
        default_factory=lambda: DiceKeepingStyle.INDEX_BASED
    )

    # Per-game overrides: {game_type: {field_name: value}}. A game may override
    # any preference declared in its relevant_preferences; get_effective() reads
    # the override when present, otherwise the global value.
    game_overrides: dict[str, dict[str, Any]] = field(default_factory=dict)

    def to_dict(self) -> dict:
        """Convert to dictionary for storage."""
        return {
            "play_turn_sound": self.play_turn_sound,
            "music_volume": self.music_volume,
            "ambience_volume": self.ambience_volume,
            "voice_volume": self.voice_volume,
            "desktop_audio_input_device_id": self.desktop_audio_input_device_id,
            "desktop_audio_input_device_name": self.desktop_audio_input_device_name,
            "speech_mode": self.speech_mode,
            "speech_rate": self.speech_rate,
            "speech_voice": self.speech_voice,
            "mobile_tts_engine": self.mobile_tts_engine,
            "mobile_tts_rate": self.mobile_tts_rate,
            "mobile_tts_voice": self.mobile_tts_voice,
            "mute_global_chat": self.mute_global_chat,
            "mute_table_chat": self.mute_table_chat,
            "notify_table_created": self.notify_table_created,
            "notify_user_presence": self.notify_user_presence,
            "notify_friend_presence": self.notify_friend_presence,
            "invert_multiline_enter_behavior": self.invert_multiline_enter_behavior,
            "play_typing_sounds": self.play_typing_sounds,
            "active_tables_filter": self.active_tables_filter,
            "game_category_filter": self.game_category_filter,
            "allow_custom_bot_names": self.allow_custom_bot_names,
            "confirm_destructive_actions": self.confirm_destructive_actions,
            "clear_kept_on_roll": self.clear_kept_on_roll,
            "dice_keeping_style": self.dice_keeping_style.value,
            "game_overrides": self.game_overrides,
        }

    @classmethod
    def from_dict(cls, data: dict) -> "UserPreferences":
        """Create from dictionary."""
        return cls(
            play_turn_sound=data.get("play_turn_sound", True),
            music_volume=data.get("music_volume", 10),
            ambience_volume=data.get("ambience_volume", 20),
            voice_volume=data.get("voice_volume", 80),
            desktop_audio_input_device_id=data.get("desktop_audio_input_device_id", ""),
            desktop_audio_input_device_name=data.get(
                "desktop_audio_input_device_name", ""
            ),
            speech_mode=data.get("speech_mode", "aria"),
            speech_rate=data.get("speech_rate", 100),
            speech_voice=data.get("speech_voice", ""),
            mobile_tts_engine=data.get("mobile_tts_engine", "system"),
            mobile_tts_rate=data.get("mobile_tts_rate", 100),
            mobile_tts_voice=data.get("mobile_tts_voice", ""),
            mute_global_chat=data.get("mute_global_chat", False),
            mute_table_chat=data.get("mute_table_chat", False),
            notify_table_created=data.get("notify_table_created", True),
            notify_user_presence=data.get("notify_user_presence", False),
            notify_friend_presence=data.get("notify_friend_presence", True),
            invert_multiline_enter_behavior=data.get("invert_multiline_enter_behavior", False),
            play_typing_sounds=data.get("play_typing_sounds", True),
            active_tables_filter=data.get("active_tables_filter", "all"),
            game_category_filter=data.get("game_category_filter", "all"),
            allow_custom_bot_names=data.get("allow_custom_bot_names", False),
            confirm_destructive_actions=data.get("confirm_destructive_actions", True),
            clear_kept_on_roll=data.get("clear_kept_on_roll", False),
            dice_keeping_style=DiceKeepingStyle.from_str(
                data.get("dice_keeping_style", "index_based")
            ),
            game_overrides=data.get("game_overrides", {}) or {},
        )

    # ------------------------------------------------------------------
    # Per-game overrides
    # ------------------------------------------------------------------

    def get_effective(self, field_name: str, game_type: str | None = None) -> Any:
        """Return a preference's effective value, honoring per-game overrides.

        If ``game_type`` has an override for ``field_name``, that wins; otherwise
        the global value is returned. Enum-typed preferences stored as raw
        strings are converted back to their enum.
        """
        if game_type and game_type in self.game_overrides:
            overrides = self.game_overrides[game_type]
            if field_name in overrides:
                raw = overrides[field_name]
                current = getattr(self, field_name, None)
                if isinstance(current, Enum) and not isinstance(raw, Enum):
                    try:
                        return type(current)(raw)
                    except (ValueError, KeyError):
                        return current
                return raw
        return getattr(self, field_name)

    def set_game_override(self, field_name: str, game_type: str, value: Any) -> None:
        """Set a per-game override (enums are stored as their value)."""
        if isinstance(value, Enum):
            value = value.value
        self.game_overrides.setdefault(game_type, {})[field_name] = value

    def clear_game_override(self, field_name: str, game_type: str) -> None:
        """Remove a per-game override, reverting to the global value."""
        if game_type in self.game_overrides:
            self.game_overrides[game_type].pop(field_name, None)
            if not self.game_overrides[game_type]:
                del self.game_overrides[game_type]

    def get_game_override(self, field_name: str, game_type: str) -> Any | None:
        """Return the raw per-game override, or None if unset."""
        return self.game_overrides.get(game_type, {}).get(field_name)

    def has_game_override(self, field_name: str, game_type: str) -> bool:
        """Whether a per-game override exists for this field."""
        return field_name in self.game_overrides.get(game_type, {})
