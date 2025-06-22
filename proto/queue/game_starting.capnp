@0xa9b8c7d6e5f40192;

using QueueRequest = import "queue_request.capnp";
using QueuePlayer = import "queue_player.capnp";

# Rating change scenario for different possible placements
struct RatingScenario {
  # Unique identifier for the player
  playerId @0 :Text;
  
  # Player's rank/placement (1st, 2nd, 3rd, 4th place)
  rank @1 :UInt32;
  
  # Player's current rating before the game
  currentRating @2 :QueueRequest.PlayerRating;
  
  # Predicted rating after the game at this rank
  predictedRating @3 :QueueRequest.PlayerRating;
  
  # How much rating would change (+/-)
  ratingDelta @4 :Float64;
}

# Rating range summary for a player
struct PlayerRatingRange {
  # Unique identifier for the player
  playerId @0 :Text;
  
  # Player's current rating
  currentRating @1 :QueueRequest.PlayerRating;
  
  # Best case scenario rating
  bestCaseRating @2 :QueueRequest.PlayerRating;
  
  # Worst case scenario rating
  worstCaseRating @3 :QueueRequest.PlayerRating;
  
  # Maximum possible rating gain
  maxGain @4 :Float64;
  
  # Maximum possible rating loss
  maxLoss @5 :Float64;
}

# Complete rating scenarios table for a game
struct RatingScenariosTable {
  # All possible rating outcomes for each player at each rank
  scenarios @0 :List(RatingScenario);
  
  # Quick lookup: min and max possible rating change for each player
  playerRanges @1 :List(PlayerRatingRange);
}

# Event emitted when a lobby is full and game is starting
struct GameStarting {
  # Unique identifier for the lobby (16-byte UUID as Data)
  lobbyId @0 :Data;
  
  # Unique identifier for the game (16-byte UUID as Data)
  gameId @1 :Data;
  
  # All players in the game
  players @2 :List(QueuePlayer.QueuePlayer);
  
  # Rating scenarios for the game
  ratingScenarios @3 :RatingScenariosTable;
  
  # Timestamp in milliseconds since Unix epoch
  timestampMs @4 :UInt64;
} 