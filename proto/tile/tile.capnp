@0xdb4c66ac406966b3;

# Tiles are represented numerically in a byte:
# MSB (Bit 7): Terminal bit (1 if 1 or 9 of a suit, 0 otherwise)
# Bits 6-5: Suit (00 for Honor, 01 for Bamboo/Sou, 10 for Pin, 11 for Character/Man)
# Bit 4: Red Five (1 if red five, 0 otherwise)
# Bits 3-0 (LSB): Rank (1-9 for numbered suit tiles, 1-7 for honor tiles)
enum Tile {
  none @0 = 0x00;

  pinOne @1 = 0xC1;
  pinTwo @2 = 0x42;
  pinThree @3 = 0x43;
  pinFour @4 = 0x44;
  pinFive @5 = 0x45;
  pinRedFive @6 = 0x55;
  pinSix @7 = 0x46;
  pinSeven @8 = 0x47;
  pinEight @9 = 0x48;
  pinNine @10 = 0xC9;

  souOne @11 = 0xA1;
  souTwo @12 = 0x22;
  souThree @13 = 0x23;
  souFour @14 = 0x24;
  souFive @15 = 0x25;
  souRedFive @16 = 0x35;
  souSix @17 = 0x26;
  souSeven @18 = 0x27;
  souEight @19 = 0x28;
  souNine @20 = 0xA9;

  manOne @21 = 0xE1;
  manTwo @22 = 0x62;
  manThree @23 = 0x63;
  manFour @24 = 0x64;
  manFive @25 = 0x65;
  manRedFive @26 = 0x75;
  manSix @27 = 0x66;
  manSeven @28 = 0x67;
  manEight @29 = 0x68;
  manNine @30 = 0xE9;

  honorEast @31 = 0x01;
  honorSouth @32 = 0x02;
  honorWest @33 = 0x03;
  honorNorth @34 = 0x04;
  honorRedDragon @35 = 0x05;
  honorWhiteDragon @36 = 0x06;
  honorGreenDragon @37 = 0x07;
} 