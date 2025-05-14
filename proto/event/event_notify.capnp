@0xb49b95ff2a46c1f5;

using Wind = import "../winds.capnp";
using Tile = import "../tile/tile.capnp";

# Represents a notify event, which is an event that has occured in the game
struct Notify {
  # Notifies are events that have occured in the game
  enum NotifyType {
    # Awaiting user action
    awaitingUserAction @0;
    # Player discarded a tile
    tileDiscarded @1;
    # Player drew a tile from the wall
    tileDrawnWall @2;
    # Player drew a tile from the dead wall
    tileDrawnDeadWall @3;
    # Player declared riichi
    riichiDeclared @4;
    # Player called a kan
    kanCalled @5;
    # Player called a pon
    ponCalled @6;
    # Player called a chi
    chiCalled @7;
    # Player called a ron
    ronCalled @8;
    # Player called a tsumo
    tsumoCalled @9;
    # Calling a riichi is available
    riichiAvailable @10;
    # Calling a kan is available
    kanAvailable @11;
    # Calling a pon is available
    ponAvailable @12;
    # Calling a chi is available
    chiAvailable @13;
    # Calling a ron is available
    ronAvailable @14;
    # Calling a tsumo is available
    tsumoAvailable @15;
    # Dora indicator
    dora @16;
  }

  type @0 :NotifyType;
  # The player seat that triggered the event
  playerSeat @1 :Wind.Wind;
  # The tile related to the event, if known information
  tile @2 :Tile.Tile;
} 