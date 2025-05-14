@0x834d9eb54afd98c4;

using Notify = import "../event/event_notify.capnp";
using Action = import "../event/event_action.capnp";
using RoundStart = import "round_start.capnp";
using Player = import "player.capnp";

# Represents a client that can play mahjong
interface PlayerClient {
  # Sends the initial game start information to the client
  gameStart @0 (player :Player.Player) -> ();

  # Sends the initial round start information to the client
  roundStart @1 (roundStart :RoundStart.RoundStart) -> ();

  # Sends all of the new events (to this player) that have occured up to the point where the game now needs
  # a decision from the player. The client should then respond with an action to perform.
  retrieveDecision @2 (notifications :List(Notify.Notify)) -> (action :Action.Action);
} 