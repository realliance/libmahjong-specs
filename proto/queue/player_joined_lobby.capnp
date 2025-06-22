@0xde6953cc4843411b;

using QueueRequest = import "queue_request.capnp";
using QueuePlayer = import "queue_player.capnp";

# Event emitted when a player/bot joins a lobby
struct PlayerJoinedLobby {
  # Unique identifier for the lobby (16-byte UUID as Data)
  lobbyId @0 :Data;
  
  # Unique identifier for the player who joined
  playerId @1 :Text;
  
  # Type of player who joined
  playerType @2 :QueueRequest.PlayerType;
  
  # List of all current players in the lobby after this join
  currentPlayers @3 :List(QueuePlayer.QueuePlayer);
  
  # Timestamp in milliseconds since Unix epoch
  timestampMs @4 :UInt64;
} 