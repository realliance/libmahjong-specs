@0xdb4c66ac406966b3;

# Tiles are represented numerically where in a byte,
# the first 2 are blank, the next two are the suit (or indicates honor), 
# and the last 4 are the rank (which after 10 includes other tiles such as Red fives)
enum Tile {
  none @0 = 0x00;
  pinOne @1 = 0x01;
  pinTwo @2 = 0x02;
  pinThree @3 = 0x03;
  pinFour @4 = 0x04;
  pinFive @5 = 0x05;
  pinSix @6 = 0x06;
  pinSeven @7 = 0x07;
  pinEight @8 = 0x08;
  pinNine @9 = 0x09;
  pinRedFive @10 = 0x0A;
  souOne @11 = 0x11;
  souTwo @12 = 0x12;
  souThree @13 = 0x13;
  souFour @14 = 0x14;
  souFive @15 = 0x15;
  souSix @16 = 0x16;
  souSeven @17 = 0x17;
  souEight @18 = 0x18;
  souNine @19 = 0x19;
  souRedFive @20 = 0x1A;
  manOne @21 = 0x21;
  manFour @22 = 0x24;
  manFive @23 = 0x25;
  manSix @24 = 0x26;
  manSeven @25 = 0x27;
  manEight @26 = 0x28;
  manNine @27 = 0x29;
  manRedFive @28 = 0x2A;
  honorEast @29 = 0x31;
  honorSouth @30 = 0x32;
  honorWest @31 = 0x33;
  honorNorth @32 = 0x34;
  honorRedDragon @33 = 0x35;
  honorWhiteDragon @34 = 0x36;
  honorGreenDragon @35 = 0x37;

  # Special tiles used in hand pattern matching
  
  # The entire list of tile sets are the same suit
  specialSameSuit @36 = 0x40;
  # Any red five
  specialRedFive @37 = 0x41;
  # The current prevailing wind
  specialPrevailingWind @38 = 0x42;
  # The current seat wind
  specialSeatWind @39 = 0x43;
  # Any pin tile
  specialPin @40 = 0x44;
  # Any sou tile
  specialSou @41 = 0x45;
  # Any man tile
  specialMan @42 = 0x46;
  # Green Tile
  specialGreen @43 = 0x47;
  # Dragon Tile
  specialDragon @44 = 0x48;
  # Unique Dragon Tile
  specialUniqueDragon @45 = 0x49;
  # Any honor tile
  specialHonor @46 = 0x4A;
  # Any not Honor
  specialNotHonor @47 = 0x4B;
  # Not terminal or honor
  specialNotTerminalOrHonor @48 = 0x4C;
  # Terminal or honor
  specialTerminalOrHonor @49 = 0x4D;
  # Unique Suit Set
  specialUniqueSuit @50 = 0x4E;
  # Unique Honor Set
  specialUniqueHonor @51 = 0x4F;  
  # Any tile
  specialAny @52 = 0x50;
  # Any one tile
  specialSuitedOne @53 = 0x51;
  # Any two tiles
  specialSuitedTwo @54 = 0x52;
  # Any three tiles
  specialSuitedThree @55 = 0x53;
  # Any four tiles
  specialSuitedFour @56 = 0x54;
  # Any five tiles
  specialSuitedFive @57 = 0x55;
  # Any six tiles
  specialSuitedSix @58 = 0x56;
  # Any seven tiles
  specialSuitedSeven @59 = 0x57;
  # Any eight tiles
  specialSuitedEight @60 = 0x58;
  # Any nine tiles
  specialSuitedNine @61 = 0x59;
  # Any terminal
  specialSuitedTerminal @62 = 0x5A;
  # Any terminal (not suited)
  specialTerminal @63 = 0x5B;
  # Same suit and numberic
  specialSameSuitAndNumeric @64 = 0x5C;
  # Unique terminal or honor
  specialUniqueTerminalOrHonor @65 = 0x5D;
  # Unique wind
  specialUniqueWind @66 = 0x5E;
} 