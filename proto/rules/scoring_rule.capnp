@0xdeafccf5dba46cd7;

using TileSet = import "../tile/tile_set.capnp";

# Represents a yaku, as in a hand (or partial hand) composition that gives points. May or may not be 
# a winning hand (such as a red five).
struct ScoringRule {
  # The name of the rule
  name @0 :Text;
  # The description of the rule
  description @1 :Text;
  # Whether this rule is a winning rule
  isWinningRule @2 :Bool;
  # The pattern that can trigger this rule. Ignored if requires_any_valid_hand_formation is true.
  # Every hand pattern set represents unique tiles in the hand. For example, two identical chows would require two sequences in this list.
  handPattern @3 :List(TileSet.TileSet);
  # Whether this rule is a yakuman
  isYakuman @4 :Bool;
  # Whether this rule is only applicable to a concealed hand
  isConcealedOnly @5 :Bool;
  # Whether this rule is only applicable to an open hand
  isOpenOnly @6 :Bool;
  # Whether this rule is an extra fan if it is concealed
  isExtraFanIfConcealed @7 :Bool;
  # Whether this rule is only applicable to a self-drawn hand
  isSelfDrawnOnly @8 :Bool;
  # Whether this rule is only applicable if the last tile from the wall was drawn
  isLastTileDrawnOnly @9 :Bool;
  # Whether this rule is only applicable if it occurs during an uninterrupted first round
  isUninterruptedFirstRoundOnly @10 :Bool;
  # Has scoring liability, which means the player who help form the final meld of this rule must pay all of the points. It is split evenly otherwise if it was formed via self draw.
  hasScoringLiability @11 :Bool;
  # Whether this rule requires a two sided wait
  requiresTwoSidedWait @12 :Bool;
  # Whether this rules requires you to declare riichi
  requiresRiichi @13 :Bool;
  # Whether the riichi must be done in the first set of hands
  requiresRiichiInFirstRound @14 :Bool;
  # Whether this rule requires winning on the replacement tile after a kan
  requiresReplacementTileAfterKan @15 :Bool;
  # Whether this rule requires east to win on their initial deal
  requiresEastToWinOnInitialDeal @16 :Bool;
  # The number of yaku this rule is worth. Should be defined if not a yakuman.
  yakuCount @17 :UInt32;
} 