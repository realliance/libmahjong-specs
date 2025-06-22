@0xf1e2d3c4b5a69708;

using QueueRequest = import "queue_request.capnp";

# Player information for matchmaking (queue-specific, different from game Player)
struct QueuePlayer {
  # Unique identifier for the player
  id @0 :Text;
  
  # Type of player (human or bot)
  playerType @1 :QueueRequest.PlayerType;
  
  # Player's rating information
  rating @2 :QueueRequest.PlayerRating;
  
  # When the player joined (timestamp in milliseconds since Unix epoch)
  joinedAtMs @3 :UInt64;
} 