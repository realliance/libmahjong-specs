@0x9adb5b410bb4968d;

using Wind = import "../winds.capnp";
using ScoringRule = import "scoring_rule.capnp";

# Represents the rules of a certain match
struct GameRules {
  # Ruleset name
  name @0 :Text;
  # The number of players in the match. Usually 3 or 4 for riichi mahjong
  playerCount @1 :UInt32;
  # The number of tiles in the wall. Includes the dead wall. Usually 136
  wallTileCount @2 :UInt32;
  # The number of tiles in the dead wall. Cannot be greater than the wall tile count. Usually 14
  deadWallTileCount @3 :UInt32;
  # The number of dora tiles in the dead wall. Usually 4 for 4 players and 8 for 3 players
  doraTileCount @4 :UInt32;
  # The number of tiles in the player's hand. Usually 14
  playerHandSize @5 :UInt32;
  # The number of red fives in the wall. Should be 0 to 4
  numberOfRedFivesPerSuit @6 :UInt32;
  # The order of the wind rounds to play through. Usually just east, but for longer games can be east and south. Must be greater than 0
  windOrder @7 :List(Wind.Wind);
  # The number of points for a win. Usually 25000 for riichi mahjong
  pointsPerWin @8 :UInt32;
  # Whether to allow robbing the kan, which is when a player steals from a melded kan and winds, therefore not revealing the next dora.
  allowRobbingTheKan @9 :Bool;
  # The rules that can trigger in a winning hand
  winningRules @10 :List(ScoringRule.ScoringRule);
} 