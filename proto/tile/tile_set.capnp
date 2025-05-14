@0x811a8d7304223914;

using Tile = import "tile.capnp";

# Represents a group of tiles, used in hand composition and scoring
struct TileSet {
  # Represents the type of a tile set
  enum TileSetType {
    # All tiles in the set are identical
    identical @0;
    # All tiles in the set are in sequence
    sequence @1;
    # The set contains a certain number of the reference tile
    contains @2;
  }

  # The reference tile of the set. Usually the first (or only type) in the set
  referenceTile @0 :Tile.Tile;
  # The type of the set
  tileSetType @1 :TileSetType;
  # The number of tiles in the set
  setCount @2 :UInt32;
  # For a contains, the number of tiles that need to match the reference tile. If not set, it is the same as set_count.
  containsCount @3 :UInt32;
  # For hands that can be pon or kan, this is the maximum size of the set.
  maxSize @4 :UInt32;
  # Whether this set is concealed
  concealed @5 :Bool;
} 