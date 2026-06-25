import pytest
from unittest.mock import MagicMock
from server.auth.auth import AuthManager
from server.persistence.database import Database
from server.core.server import FRIEND_REMOVE_CONFIRM_MENU, Server
from server.users.network_user import NetworkUser
import tempfile
import os


class MockClient:
    def __init__(self, address: str):
        self.sent_messages = []
        self.ip_address = "127.0.0.1"
        self.address = address
        self.username = None
        self.authenticated = False
        self.closed = False

    async def send(self, message):
        self.sent_messages.append(message)

    async def close(self):
        self.closed = True


class DummyWebSocketServer:
    def __init__(self):
        self._clients_by_address = {}
        self._clients_by_username = {}

    def bind_client(self, client):
        self._clients_by_address[client.address] = client

    def get_client_by_username(self, username):
        return self._clients_by_username.get(username)

    def register_client_username(self, address, username):
        client = self._clients_by_address.get(address)
        if client is not None:
            self._clients_by_username[username] = client

class TestFriendsSystem:
    def setup_method(self):
        self.temp_file = tempfile.NamedTemporaryFile(delete=False, suffix=".db")
        self.temp_file.close()
        self.db = Database(self.temp_file.name)
        self.db.connect()

        self.server = Server(db_path=self.temp_file.name)
        self.server._db = self.db
        self.server._auth = AuthManager(self.db)
        self.server._ws_server = DummyWebSocketServer()

    def teardown_method(self):
        self.db.close()
        os.unlink(self.temp_file.name)

    def _create_friendship(self):
        self.db.create_user("Alice", "hash")
        self.db.create_user("Bob", "hash")
        alice = self.db.get_user("Alice")
        bob = self.db.get_user("Bob")
        self.db.send_friend_request(alice.uuid, bob.uuid)
        self.db.accept_friend_request(alice.uuid, bob.uuid)
        return alice, bob

    def _make_network_user(self, username: str, uuid: str) -> NetworkUser:
        client = MockClient(f"127.0.0.1:{10000 + len(self.server._users)}")
        user = NetworkUser(username, "en", client, uuid=uuid, approved=True)
        self.server._users[username] = user
        return user

    def test_send_request_and_duplicate(self):
        self.db.create_user("alice", "hash")
        self.db.create_user("bob", "hash")

        u_alice = self.db.get_user("alice")
        u_bob = self.db.get_user("bob")

        # 1. Send Request
        res = self.db.send_friend_request(u_alice.uuid, u_bob.uuid)
        assert res == "sent"

        # 2. Try sending again (Duplicate)
        res2 = self.db.send_friend_request(u_alice.uuid, u_bob.uuid)
        assert res2 == "duplicate"

    def test_cross_request_instant_accept(self):
        self.db.create_user("alice", "hash")
        self.db.create_user("bob", "hash")

        u_alice = self.db.get_user("alice")
        u_bob = self.db.get_user("bob")

        # Alice sends to Bob
        self.db.send_friend_request(u_alice.uuid, u_bob.uuid)

        # Bob unknowingly sends to Alice -> Should instantly accept
        res = self.db.send_friend_request(u_bob.uuid, u_alice.uuid)
        assert res == "accepted"

        # Verify they are friends
        friends_alice = self.db.get_friends(u_alice.uuid)
        assert len(friends_alice) == 1
        assert friends_alice[0] == u_bob.uuid

    @pytest.mark.asyncio
    async def test_grouped_offline_notifications(self):
        # We need to use NetworkUser object to test the actual grouped output logic
        self.db.create_user("alice", "hash")
        u_alice = self.db.get_user("alice")

        # Add a bunch of offline notifications
        self.db.add_notification(u_alice.uuid, "bob", "friend_request_received")
        self.db.add_notification(u_alice.uuid, "charlie", "friend_request_received")
        self.db.add_notification(u_alice.uuid, "dave", "friend_accepted")
        self.db.add_notification(u_alice.uuid, "eve", "friend_accepted")

        client = MagicMock()
        client.username = "alice"
        network_user = NetworkUser("alice", "en", client, uuid=u_alice.uuid)
        network_user.speak_l = MagicMock()
        network_user.play_sound = MagicMock()

        self.server._process_offline_notifications(network_user)

        # 1. Ensure TTS was called only TWICE (grouped) despite 4 notifications
        assert network_user.speak_l.call_count == 2

        # 2. Ensure sound was called TWICE
        assert network_user.play_sound.call_count == 2

        # Check actual DB is clear
        assert len(self.db.get_and_clear_notifications(u_alice.uuid)) == 0

    def test_account_deletion_cleanup(self):
        self.db.create_user("alice", "hash")
        self.db.create_user("bob", "hash")
        u_alice = self.db.get_user("alice")
        u_bob = self.db.get_user("bob")

        # Make them friends
        self.db.send_friend_request(u_alice.uuid, u_bob.uuid)
        self.db.accept_friend_request(u_alice.uuid, u_bob.uuid)

        assert len(self.db.get_friends(u_alice.uuid)) == 1

        # Add a notification
        self.db.add_notification(u_bob.uuid, "alice", "friend_removed")

        # Delete Alice
        self.db.delete_user("alice")

        # Verify Bob has NO friends
        assert len(self.db.get_friends(u_bob.uuid)) == 0

        # Verify Bob has NO notifications from Alice
        assert len(self.db.get_and_clear_notifications(u_bob.uuid)) == 0

    @pytest.mark.asyncio
    async def test_friends_list_marks_case_variant_login_as_online(self):
        self.server._auth.register("Alice", "Password123")
        self.server._auth.register("Bob", "Password123")

        alice_record = self.db.get_user("Alice")
        bob_record = self.db.get_user("Bob")
        assert alice_record is not None
        assert bob_record is not None

        self.db.send_friend_request(alice_record.uuid, bob_record.uuid)
        self.db.accept_friend_request(alice_record.uuid, bob_record.uuid)

        alice_client = MockClient("127.0.0.1:10001")
        self.server._ws_server.bind_client(alice_client)
        await self.server._handle_authorize(
            alice_client,
            {
                "type": "authorize",
                "client": "python",
                "username": "alice",
                "password": "Password123",
                "version": "1.0.0",
            },
        )

        bob_client = MagicMock()
        bob_user = NetworkUser("Bob", "en", bob_client, uuid=bob_record.uuid, approved=True)
        items = self.server._get_friends_list_menu_items(bob_user)

        assert any(item.id == "friend_Alice" and "In Lobby" in item.text for item in items)

    @pytest.mark.asyncio
    async def test_remove_friend_prompts_before_deleting(self):
        alice, bob = self._create_friendship()
        alice_user = self._make_network_user(alice.username, alice.uuid)
        self.server._user_states[alice.username] = {
            "menu": "friend_actions_menu",
            "target_username": bob.username,
            "_stack": [
                {"menu": "friends_hub_menu"},
                {"menu": "friends_list_menu"},
            ],
        }

        await self.server._handle_friend_actions_selection(
            alice_user,
            "remove_friend",
            self.server._user_states[alice.username],
        )

        assert bob.uuid in self.db.get_friends(alice.uuid)
        state = self.server._user_states[alice.username]
        assert state["menu"] == FRIEND_REMOVE_CONFIRM_MENU
        assert state["target_username"] == bob.username

        messages = alice_user.get_queued_messages()
        assert any(
            msg.get("type") == "speak" and msg.get("key") == "friend-remove-confirm"
            for msg in messages
        )
        menu = next(msg for msg in messages if msg.get("type") == "menu")
        assert menu["menu_id"] == FRIEND_REMOVE_CONFIRM_MENU
        assert menu["escape_behavior"] == "select_last_option"
        assert [item["id"] for item in menu["items"]] == ["yes", "no"]

    @pytest.mark.asyncio
    async def test_remove_friend_cancel_keeps_friendship_and_returns_to_actions(self):
        alice, bob = self._create_friendship()
        alice_user = self._make_network_user(alice.username, alice.uuid)
        self.server._user_states[alice.username] = {
            "menu": "friend_actions_menu",
            "target_username": bob.username,
            "_stack": [
                {"menu": "friends_hub_menu"},
                {"menu": "friends_list_menu"},
            ],
        }
        await self.server._handle_friend_actions_selection(
            alice_user,
            "remove_friend",
            self.server._user_states[alice.username],
        )

        await self.server._handle_friend_remove_confirm_selection(
            alice_user,
            "no",
            self.server._user_states[alice.username],
        )

        assert bob.uuid in self.db.get_friends(alice.uuid)
        state = self.server._user_states[alice.username]
        assert state["menu"] == "friend_actions_menu"
        assert state["target_username"] == bob.username

    @pytest.mark.asyncio
    async def test_remove_friend_confirm_deletes_and_notifies_both_users(self):
        alice, bob = self._create_friendship()
        alice_user = self._make_network_user(alice.username, alice.uuid)
        bob_user = self._make_network_user(bob.username, bob.uuid)
        self.server._user_states[alice.username] = {
            "menu": "friend_actions_menu",
            "target_username": bob.username,
            "_stack": [
                {"menu": "friends_hub_menu"},
                {"menu": "friends_list_menu"},
            ],
        }
        await self.server._handle_friend_actions_selection(
            alice_user,
            "remove_friend",
            self.server._user_states[alice.username],
        )
        alice_user.get_queued_messages()

        await self.server._handle_friend_remove_confirm_selection(
            alice_user,
            "yes",
            self.server._user_states[alice.username],
        )

        assert bob.uuid not in self.db.get_friends(alice.uuid)
        state = self.server._user_states[alice.username]
        assert state["menu"] == "friends_list_menu"
        assert state.get("_stack") == [{"menu": "friends_hub_menu"}]

        alice_messages = alice_user.get_queued_messages()
        assert any(
            msg.get("type") == "speak" and msg.get("key") == "friend-removed-success"
            for msg in alice_messages
        )
        assert any(
            msg.get("type") == "play_sound"
            and msg.get("name") == "friend_removed.ogg"
            for msg in alice_messages
        )

        bob_messages = bob_user.get_queued_messages()
        assert any(
            msg.get("type") == "speak" and msg.get("key") == "friend-removed-notify"
            for msg in bob_messages
        )
        assert any(
            msg.get("type") == "play_sound"
            and msg.get("name") == "friend_removed.ogg"
            for msg in bob_messages
        )

    @pytest.mark.asyncio
    async def test_remove_friend_confirm_does_not_delete_new_pending_request(self):
        alice, bob = self._create_friendship()
        alice_user = self._make_network_user(alice.username, alice.uuid)
        self.server._user_states[alice.username] = {
            "menu": "friend_actions_menu",
            "target_username": bob.username,
            "_stack": [
                {"menu": "friends_hub_menu"},
                {"menu": "friends_list_menu"},
            ],
        }
        await self.server._handle_friend_actions_selection(
            alice_user,
            "remove_friend",
            self.server._user_states[alice.username],
        )
        alice_user.get_queued_messages()

        self.db.remove_friendship(alice.uuid, bob.uuid)
        self.db.send_friend_request(bob.uuid, alice.uuid)

        await self.server._handle_friend_remove_confirm_selection(
            alice_user,
            "yes",
            self.server._user_states[alice.username],
        )

        assert bob.uuid in self.db.get_pending_incoming_requests(alice.uuid)
        messages = alice_user.get_queued_messages()
        assert any(
            msg.get("type") == "speak" and msg.get("key") == "friend-remove-not-friends"
            for msg in messages
        )
        assert not any(
            msg.get("type") == "play_sound"
            and msg.get("name") == "friend_removed.ogg"
            for msg in messages
        )

    @pytest.mark.asyncio
    async def test_direct_friend_actions(self):
        self.db.create_user("UserA", "hash")
        self.db.create_user("UserB", "hash")
        user_a = self.db.get_user("UserA")
        user_b = self.db.get_user("UserB")
        
        ua_user = self._make_network_user(user_a.username, user_a.uuid)
        ub_user = self._make_network_user(user_b.username, user_b.uuid)
        ua_user.connection.username = user_a.username
        ub_user.connection.username = user_b.username

        # 1. Send friend request via direct action packet
        await self.server._handle_action_send_friend_request(
            ua_user.connection,
            {"username": "UserB"}
        )
        assert user_a.uuid in self.db.get_pending_incoming_requests(user_b.uuid)
        assert user_b.uuid in self.db.get_pending_outgoing_requests(user_a.uuid)
        
        # 2. Cancel the pending outgoing request via direct action packet
        await self.server._handle_action_remove_friendship(
            ua_user.connection,
            {"username": "UserB"}
        )
        assert user_a.uuid not in self.db.get_pending_incoming_requests(user_b.uuid)
        
        # 3. Send friend request again
        await self.server._handle_action_send_friend_request(
            ua_user.connection,
            {"username": "UserB"}
        )
        
        # 4. Accept friend request via direct action packet
        await self.server._handle_action_accept_friend_request(
            ub_user.connection,
            {"username": "UserA"}
        )
        assert user_b.uuid in self.db.get_friends(user_a.uuid)
        assert user_a.uuid in self.db.get_friends(user_b.uuid)

        # 5. Remove friendship (unfriend) via direct action packet
        await self.server._handle_action_remove_friendship(
            ua_user.connection,
            {"username": "UserB"}
        )
        assert user_b.uuid not in self.db.get_friends(user_a.uuid)
