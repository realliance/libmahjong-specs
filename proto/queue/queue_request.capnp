@0xed5132765b4a1861;

# Player type enum to distinguish between human players and bots
enum PlayerType {
  human @0;
  bot @1;
}

# Lobby type enum to define different types of game lobbies
enum LobbyType {
  allBot @0;
  general @1;
}

# Rating information for a player/bot
struct PlayerRating {
  # The rating value
  rating @0 :Float64;
  
  # The uncertainty in the rating
  uncertainty @1 :Float64;
}

# Request to join a lobby queue
struct QueueRequest {
  # Unique identifier for the player (string representation)
  playerId @0 :Text;
  
  # Type of player (human or bot)
  playerType @1 :PlayerType;
  
  # Type of lobby being requested
  lobbyType @2 :LobbyType;
  
  # Current rating of the player
  currentRating @3 :PlayerRating;
  
  # Timestamp in milliseconds since Unix epoch
  timestampMs @4 :UInt64;
} 