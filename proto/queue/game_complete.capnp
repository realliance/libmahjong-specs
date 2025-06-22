@0xd4e5f6a7b8c90314;

using QueueRequest = import "queue_request.capnp";

# Individual player's game result and rating change
struct PlayerGameResult {
  # Unique identifier for the player
  playerId @0 :Text;
  
  # Player's final rank/placement (1st, 2nd, 3rd, 4th place)
  rank @1 :UInt32;
  
  # Points/score the player achieved in the game
  points @2 :UInt32;
  
  # Player's rating before the game
  oldRating @3 :QueueRequest.PlayerRating;
  
  # Player's rating after the game
  newRating @4 :QueueRequest.PlayerRating;
  
  # Actual rating change that occurred (+/-)
  ratingDelta @5 :Float64;
}

# Event emitted when a game is completed with final results
struct GameComplete {
  # Unique identifier for the game that completed (16-byte UUID as Data)
  gameId @0 :Data;
  
  # Timestamp when the game completed (milliseconds since Unix epoch)
  timestampMs @1 :UInt64;
  
  # Results for all players who participated in the game
  playerResults @2 :List(PlayerGameResult);
  
  # Timestamp when the game started (milliseconds since Unix epoch)
  startTimeMs @3 :UInt64;
  
  # Timestamp when the game ended (milliseconds since Unix epoch)
  endTimeMs @4 :UInt64;
} 