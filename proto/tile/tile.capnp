@0xdb4c66ac406966b3;

# Tiles are represented numerically in a byte:
# MSB (Bit 7): Terminal bit (1 if 1 or 9 of a suit, 0 otherwise)
# Bits 6-5: Suit (00 for Honor, 01 for Bamboo/Sou, 10 for Pin, 11 for Character/Man)
# Bit 4: Red Five (1 if red five, 0 otherwise)
# Bits 3-0 (LSB): Rank (1-9 for numbered suit tiles, 1-7 for honor tiles)
enum Tile {
  none @0;

  pinOne @1;
  pinTwo @2;
  pinThree @3;
  pinFour @4;
  pinFive @5;
  pinRedFive @6;
  pinSix @7;
  pinSeven @8;
  pinEight @9;
  pinNine @10;

  souOne @11;
  souTwo @12;
  souThree @13;
  souFour @14;
  souFive @15;
  souRedFive @16;
  souSix @17;
  souSeven @18;
  souEight @19;
  souNine @20;

  manOne @21;
  manTwo @22;
  manThree @23;
  manFour @24;
  manFive @25;
  manRedFive @26;
  manSix @27;
  manSeven @28;
  manEight @29;
  manNine @30;

  honorEast @31;
  honorSouth @32;
  honorWest @33;
  honorNorth @34;
  honorRedDragon @35;
  honorWhiteDragon @36;
  honorGreenDragon @37;
} 