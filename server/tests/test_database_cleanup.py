import pytest
import sqlite3
import json
import datetime
from datetime import timedelta
from server.persistence.database import Database

@pytest.fixture
def db():
    """In-memory database for testing."""
    database = Database(":memory:")
    database.connect()
    yield database
    database.close()

def test_prune_old_records(db):
    cursor = db._conn.cursor()

    now = datetime.datetime.now()
    recent = now - timedelta(days=10)
    old_game = now - timedelta(days=40)
    old_save = now - timedelta(days=400)
    old_ban = now - timedelta(days=40)
    future = now + timedelta(days=10)

    db.create_user("mute_active", "hash")
    db.create_user("mute_expired", "hash")

    # Insert game_results
    cursor.execute("INSERT INTO game_results (game_type, timestamp, duration_ticks, custom_data) VALUES (?, ?, ?, ?)",
                   ("pig", recent.isoformat(), 100, "{}"))
    recent_game_id = cursor.lastrowid

    cursor.execute("INSERT INTO game_results (game_type, timestamp, duration_ticks, custom_data) VALUES (?, ?, ?, ?)",
                   ("pig", old_game.isoformat(), 100, "{}"))
    old_game_id = cursor.lastrowid

    # Insert children to test CASCADE
    cursor.execute("INSERT INTO game_result_players (result_id, player_id, player_name, is_bot) VALUES (?, 'u1', 'p1', 0)", (recent_game_id,))
    cursor.execute("INSERT INTO game_result_players (result_id, player_id, player_name, is_bot) VALUES (?, 'u2', 'p2', 0)", (old_game_id,))

    # Insert saved_tables
    cursor.execute("INSERT INTO saved_tables (username, save_name, game_type, game_json, members_json, saved_at) VALUES (?, ?, ?, ?, ?, ?)",
                   ("p1", "Recent", "pig", "{}", "[]", recent.isoformat()))
    cursor.execute("INSERT INTO saved_tables (username, save_name, game_type, game_json, members_json, saved_at) VALUES (?, ?, ?, ?, ?, ?)",
                   ("p1", "Old", "pig", "{}", "[]", old_save.isoformat()))

    # Insert bans
    cursor.execute("INSERT INTO bans (username, admin_username, reason_key, issued_at, expires_at) VALUES (?, ?, ?, ?, ?)",
                   ("b1", "admin", "reason", old_game.isoformat(), recent.isoformat())) # Expired recently
    cursor.execute("INSERT INTO bans (username, admin_username, reason_key, issued_at, expires_at) VALUES (?, ?, ?, ?, ?)",
                   ("b2", "admin", "reason", old_save.isoformat(), old_ban.isoformat())) # Expired long ago

    # Insert mutes
    cursor.execute("INSERT INTO mutes (username, admin_username, reason, issued_at, expires_at) VALUES (?, ?, ?, ?, ?)",
                   ("mute_active", "admin", "reason", recent.isoformat(), future.isoformat()))
    cursor.execute("INSERT INTO mutes (username, admin_username, reason, issued_at, expires_at) VALUES (?, ?, ?, ?, ?)",
                   ("mute_expired", "admin", "reason", old_game.isoformat(), recent.isoformat()))
    cursor.execute("INSERT INTO mutes (username, admin_username, reason, issued_at, expires_at) VALUES (?, ?, ?, ?, ?)",
                   ("mute_orphan", "admin", "reason", recent.isoformat(), future.isoformat()))

    db._conn.commit()

    # Run pruner
    db.prune_old_records()

    # Check game results and cascade
    cursor.execute("SELECT id FROM game_results")
    games = [row[0] for row in cursor.fetchall()]
    assert recent_game_id in games
    assert old_game_id not in games

    cursor.execute("SELECT result_id FROM game_result_players")
    players = [row[0] for row in cursor.fetchall()]
    assert recent_game_id in players
    assert old_game_id not in players # Cascaded!

    # Check saved tables
    cursor.execute("SELECT save_name FROM saved_tables")
    saves = [row[0] for row in cursor.fetchall()]
    assert "Recent" in saves
    assert "Old" not in saves

    # Check bans
    cursor.execute("SELECT username FROM bans")
    bans = [row[0] for row in cursor.fetchall()]
    assert "b1" in bans
    assert "b2" not in bans

    # Check mutes
    cursor.execute("SELECT username FROM mutes")
    mutes = [row[0] for row in cursor.fetchall()]
    assert "mute_active" in mutes
    assert "mute_expired" not in mutes
    assert "mute_orphan" not in mutes

def test_connect_can_skip_pruning_for_short_cli_operations(tmp_path):
    db_path = tmp_path / "PlayAural.db"
    database = Database(db_path)
    database.connect()

    old_game = datetime.datetime.now() - timedelta(days=40)
    cursor = database._conn.cursor()
    cursor.execute(
        "INSERT INTO game_results (game_type, timestamp, duration_ticks, custom_data) VALUES (?, ?, ?, ?)",
        ("pig", old_game.isoformat(), 100, "{}"),
    )
    database._conn.commit()
    database.close()

    database = Database(db_path)
    database.connect(prune=False)
    cursor = database._conn.cursor()
    cursor.execute("SELECT COUNT(*) FROM game_results")
    assert cursor.fetchone()[0] == 1
    database.close()

    database = Database(db_path)
    database.connect(prune=True)
    cursor = database._conn.cursor()
    cursor.execute("SELECT COUNT(*) FROM game_results")
    assert cursor.fetchone()[0] == 0
    database.close()

def test_prune_unregistered_game_data_removes_only_stale_game_types(db, capsys):
    cursor = db._conn.cursor()

    cursor.execute(
        """
        INSERT INTO tables (table_id, game_type, host, members_json, game_json, status)
        VALUES (?, ?, ?, ?, ?, ?)
        """,
        ("valid-table", "pig", "Alice", "[]", "{}", "waiting"),
    )
    cursor.execute(
        """
        INSERT INTO tables (table_id, game_type, host, members_json, game_json, status)
        VALUES (?, ?, ?, ?, ?, ?)
        """,
        ("stale-table", "lastcard", "Alice", "[]", "{}", "waiting"),
    )
    cursor.execute(
        """
        INSERT INTO saved_tables
            (username, save_name, game_type, game_json, members_json, saved_at)
        VALUES (?, ?, ?, ?, ?, ?)
        """,
        ("Alice", "Pig Save", "pig", "{}", "[]", "2026-01-01T00:00:00"),
    )
    cursor.execute(
        """
        INSERT INTO saved_tables
            (username, save_name, game_type, game_json, members_json, saved_at)
        VALUES (?, ?, ?, ?, ?, ?)
        """,
        ("Alice", "Last Card Save", "lastcard", "{}", "[]", "2026-01-01T00:00:00"),
    )
    cursor.execute(
        """
        INSERT INTO game_results (game_type, timestamp, duration_ticks, custom_data)
        VALUES (?, ?, ?, ?)
        """,
        ("pig", "2026-01-01T00:00:00", 100, "{}"),
    )
    valid_result_id = cursor.lastrowid
    cursor.execute(
        """
        INSERT INTO game_results (game_type, timestamp, duration_ticks, custom_data)
        VALUES (?, ?, ?, ?)
        """,
        ("lastcard", "2026-01-01T00:00:00", 100, "{}"),
    )
    stale_result_id = cursor.lastrowid
    cursor.execute(
        """
        INSERT INTO game_result_players (result_id, player_id, player_name, is_bot)
        VALUES (?, ?, ?, ?)
        """,
        (valid_result_id, "p1", "Alice", 0),
    )
    cursor.execute(
        """
        INSERT INTO game_result_players (result_id, player_id, player_name, is_bot)
        VALUES (?, ?, ?, ?)
        """,
        (stale_result_id, "p2", "Bob", 0),
    )
    cursor.execute(
        """
        INSERT INTO player_game_stats (player_id, game_type, stat_key, stat_value)
        VALUES (?, ?, ?, ?)
        """,
        ("p1", "pig", "wins", 2),
    )
    cursor.execute(
        """
        INSERT INTO player_game_stats (player_id, game_type, stat_key, stat_value)
        VALUES (?, ?, ?, ?)
        """,
        ("p2", "lastcard", "wins", 3),
    )
    cursor.execute(
        "INSERT INTO player_ratings (player_id, game_type, mu, sigma) VALUES (?, ?, ?, ?)",
        ("p1", "pig", 25.0, 8.0),
    )
    cursor.execute(
        "INSERT INTO player_ratings (player_id, game_type, mu, sigma) VALUES (?, ?, ?, ?)",
        ("p2", "lastcard", 28.0, 7.0),
    )
    cursor.execute(
        """
        CREATE TABLE future_game_events (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            game_type TEXT NOT NULL,
            note TEXT NOT NULL
        )
        """
    )
    cursor.execute(
        "INSERT INTO future_game_events (game_type, note) VALUES (?, ?)",
        ("pig", "keep"),
    )
    cursor.execute(
        "INSERT INTO future_game_events (game_type, note) VALUES (?, ?)",
        ("lastcard", "delete"),
    )
    cursor.execute(
        """
        CREATE TABLE future_result_notes (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            result_id INTEGER REFERENCES game_results(id),
            note TEXT NOT NULL
        )
        """
    )
    cursor.execute(
        "INSERT INTO future_result_notes (result_id, note) VALUES (?, ?)",
        (valid_result_id, "keep"),
    )
    cursor.execute(
        "INSERT INTO future_result_notes (result_id, note) VALUES (?, ?)",
        (stale_result_id, "delete"),
    )
    db._conn.commit()

    counts = db.prune_unregistered_game_data({"pig", "uno"})
    printed = capsys.readouterr().out

    assert counts["tables"] == 1
    assert counts["saved_tables"] == 1
    assert counts["game_results"] == 1
    assert counts["game_result_players"] == 1
    assert counts["future_game_events"] == 1
    assert counts["future_result_notes"] == 1
    assert counts["player_game_stats"] == 1
    assert counts["player_ratings"] == 1
    assert "Database Pruning: Checking unregistered game data" in printed
    assert "Unregistered game types detected: lastcard" in printed
    assert "future_game_events=1" in printed
    assert "future_result_notes=1" in printed

    for table_name in (
        "tables",
        "saved_tables",
        "future_game_events",
        "game_results",
        "player_game_stats",
        "player_ratings",
    ):
        cursor.execute(f"SELECT DISTINCT game_type FROM {table_name}")
        assert [row[0] for row in cursor.fetchall()] == ["pig"]

    cursor.execute("SELECT result_id FROM game_result_players")
    assert [row[0] for row in cursor.fetchall()] == [valid_result_id]
    cursor.execute("SELECT result_id FROM future_result_notes")
    assert [row[0] for row in cursor.fetchall()] == [valid_result_id]


def test_prune_unregistered_game_data_empty_allowlist_is_noop(db):
    cursor = db._conn.cursor()
    cursor.execute(
        """
        INSERT INTO player_game_stats (player_id, game_type, stat_key, stat_value)
        VALUES (?, ?, ?, ?)
        """,
        ("p1", "lastcard", "wins", 1),
    )
    db._conn.commit()

    counts = db.prune_unregistered_game_data(set())

    assert not any(counts.values())
    cursor.execute("SELECT game_type FROM player_game_stats")
    assert [row[0] for row in cursor.fetchall()] == ["lastcard"]


def test_prune_unsupported_leaderboard_data_removes_only_invalid_stats(db, capsys):
    cursor = db._conn.cursor()
    stat_rows = [
        ("p1", "pig", "games_played", 5),
        ("p1", "pig", "wins", 2),
        ("p1", "pig", "losses", 3),
        ("p1", "pig", "total_score", 240),
        ("p1", "pig", "high_score", 120),
        ("p1", "pig", "junk_score", 999),
        ("p2", "twentyone", "games_played", 3),
        ("p2", "twentyone", "wins", 1),
        ("p2", "twentyone", "losses", 2),
        ("p2", "twentyone", "total_score", 50),
        ("p2", "twentyone", "high_score", 30),
        ("p3", "metalpipe", "games_played", 4),
        ("p3", "metalpipe", "losses", 4),
        ("p4", "battle", "games_played", 2),
        ("p4", "battle", "custom_most_enemies_defeated_high", 13),
        ("p4", "battle", "custom_deepest_wave_reached_high", 5),
        ("p4", "battle", "total_score", 500),
        ("p5", "lastcard", "wins", 8),
    ]
    cursor.executemany(
        """
        INSERT INTO player_game_stats (player_id, game_type, stat_key, stat_value)
        VALUES (?, ?, ?, ?)
        """,
        stat_rows,
    )
    rating_rows = [
        ("p1", "pig", 30.0, 6.0),
        ("p2", "twentyone", 28.0, 7.0),
        ("p3", "metalpipe", 31.0, 5.0),
        ("p6", "blackjack", 27.0, 8.0),
        ("p5", "lastcard", 35.0, 4.0),
    ]
    cursor.executemany(
        "INSERT INTO player_ratings (player_id, game_type, mu, sigma) VALUES (?, ?, ?, ?)",
        rating_rows,
    )
    db._conn.commit()

    counts = db.prune_unsupported_leaderboard_data(
        {
            "pig": {"games_played", "wins", "losses", "total_score", "high_score"},
            "twentyone": {"games_played", "wins", "losses"},
            "metalpipe": set(),
            "battle": {
                "games_played",
                "custom_most_enemies_defeated_high",
                "custom_deepest_wave_reached_high",
            },
            "blackjack": {"games_played"},
        },
        {"pig", "twentyone"},
    )
    printed = capsys.readouterr().out

    assert counts == {"player_game_stats": 6, "player_ratings": 2}
    assert "Unsupported leaderboard stat keys detected" in printed
    assert "metalpipe:games_played" in printed
    assert "twentyone:total_score" in printed
    assert "Unsupported rating game types detected: blackjack, metalpipe" in printed

    cursor.execute(
        """
        SELECT player_id, game_type, stat_key, stat_value
        FROM player_game_stats
        ORDER BY player_id, game_type, stat_key
        """
    )
    remaining_stats = [tuple(row) for row in cursor.fetchall()]
    assert remaining_stats == [
        ("p1", "pig", "games_played", 5.0),
        ("p1", "pig", "high_score", 120.0),
        ("p1", "pig", "losses", 3.0),
        ("p1", "pig", "total_score", 240.0),
        ("p1", "pig", "wins", 2.0),
        ("p2", "twentyone", "games_played", 3.0),
        ("p2", "twentyone", "losses", 2.0),
        ("p2", "twentyone", "wins", 1.0),
        ("p4", "battle", "custom_deepest_wave_reached_high", 5.0),
        ("p4", "battle", "custom_most_enemies_defeated_high", 13.0),
        ("p4", "battle", "games_played", 2.0),
        ("p5", "lastcard", "wins", 8.0),
    ]

    cursor.execute(
        """
        SELECT player_id, game_type
        FROM player_ratings
        ORDER BY player_id, game_type
        """
    )
    assert [tuple(row) for row in cursor.fetchall()] == [
        ("p1", "pig"),
        ("p2", "twentyone"),
        ("p5", "lastcard"),
    ]


def test_prune_unsupported_leaderboard_data_empty_support_map_is_noop(db):
    cursor = db._conn.cursor()
    cursor.execute(
        """
        INSERT INTO player_game_stats (player_id, game_type, stat_key, stat_value)
        VALUES (?, ?, ?, ?)
        """,
        ("p1", "metalpipe", "games_played", 1),
    )
    cursor.execute(
        "INSERT INTO player_ratings (player_id, game_type, mu, sigma) VALUES (?, ?, ?, ?)",
        ("p1", "metalpipe", 30.0, 6.0),
    )
    db._conn.commit()

    counts = db.prune_unsupported_leaderboard_data({}, set())

    assert counts == {"player_game_stats": 0, "player_ratings": 0}
    cursor.execute("SELECT game_type, stat_key FROM player_game_stats")
    assert [tuple(row) for row in cursor.fetchall()] == [("metalpipe", "games_played")]
    cursor.execute("SELECT game_type FROM player_ratings")
    assert [row[0] for row in cursor.fetchall()] == ["metalpipe"]


def test_delete_user_cascades(db):
    db.create_user("Alice", "hash")
    alice = db.get_user("Alice")

    cursor = db._conn.cursor()

    # Insert fake data across all tables
    cursor.execute("INSERT INTO player_game_stats (player_id, game_type, stat_key, stat_value) VALUES (?, 'pig', 'wins', 1)", (alice.uuid,))
    cursor.execute("INSERT INTO player_ratings (player_id, game_type, mu, sigma) VALUES (?, 'pig', 25.0, 8.0)", (alice.uuid,))
    cursor.execute("INSERT INTO saved_tables (username, save_name, game_type, game_json, members_json, saved_at) VALUES (?, 'save', 'pig', '', '', '')", ("Alice",))
    cursor.execute("INSERT INTO bans (username, admin_username, reason_key, issued_at, expires_at) VALUES (?, 'admin', 'r', '', '')", ("Alice",))
    cursor.execute("INSERT INTO mutes (username, admin_username, reason, issued_at, expires_at) VALUES (?, 'admin', 'r', '', '')", ("Alice",))
    db._conn.commit()

    # Run delete
    assert db.delete_user("Alice") is True

    # Verify everything is gone
    cursor.execute("SELECT COUNT(*) FROM player_game_stats")
    assert cursor.fetchone()[0] == 0

    cursor.execute("SELECT COUNT(*) FROM player_ratings")
    assert cursor.fetchone()[0] == 0

    cursor.execute("SELECT COUNT(*) FROM saved_tables")
    assert cursor.fetchone()[0] == 0

    cursor.execute("SELECT COUNT(*) FROM bans")
    assert cursor.fetchone()[0] == 0

    cursor.execute("SELECT COUNT(*) FROM mutes")
    assert cursor.fetchone()[0] == 0

    cursor.execute("SELECT COUNT(*) FROM users")
    assert cursor.fetchone()[0] == 0
