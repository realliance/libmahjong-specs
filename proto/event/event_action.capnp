@0x89f71a2727a0ec7d;

using Wind = import "../winds.capnp";
using Tile = import "../tile/tile.capnp";

# Represents an action event, which is an event that you can perform
struct Action {
  # Actions are events you can perform
  enum ActionType {
    # Discard a tile
    discardTile @0;
    # Call riichi
    callRiichi @1;
    # Call kan
    callKan @2;
    # Call pon
    callPon @3;
    # Call chi
    callChi @4;
    # Call ron
    callRon @5;
    # Call tsumo
    callTsumo @6;
    # Decline call
    declineCall @7;
  }

  type @0 :ActionType;
  # The player seat that triggered the event
  playerSeat @1 :Wind.Wind;
  # The tile related to the event
  tile @2 :Tile.Tile;
} 