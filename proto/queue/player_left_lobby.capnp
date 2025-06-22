@0x905ea0eac9020496;

using QueueRequest = import "queue_request.capnp";
using QueuePlayer = import "queue_player.capnp";

# Reason why a player left the lobby
enum LeaveReason {
  # Player was disconnected
  disconnect @0;
  
  # Player voluntarily quit
  userQuit @1;
  
  # Timeout waiting for player action
  timeout @2;
  
  # System error occurred
  systemError @3;
}

# Event emitted when a player/bot leaves a lobby
struct PlayerLeftLobby {
  # Unique identifier for the lobby (16-byte UUID as Data)
  lobbyId @0 :Data;
  
  # Unique identifier for the player who left
  playerId @1 :Text;
  
  # Reason why the player left
  reason @2 :LeaveReason;
  
  # List of remaining players in the lobby after this leave
  remainingPlayers @3 :List(QueuePlayer.QueuePlayer);
  
  # Timestamp in milliseconds since Unix epoch
  timestampMs @4 :UInt64;
}