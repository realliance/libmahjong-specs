@0xaaa35baa91dda3b8;

using Tile = import "../tile/tile.capnp";
using Wind = import "../winds.capnp";
using Player = import "player.capnp";

# Represents a round start event, which is an event that occurs at the beginning of a round
struct RoundStart {
  # Your new hand
  hand @0 :List(Tile.Tile);
  # Your seat wind
  seatWind @1 :Wind.Wind;
  # The prevailing wind
  prevailingWind @2 :Wind.Wind; 
  # All players
  players @3 :List(Player.Player);
} 