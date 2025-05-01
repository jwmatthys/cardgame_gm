class Supply {
  Card[] kingdomPile;
  Card[] basePile;
  int[] kingdomQuantity;
  int[] baseQuantity;

  Supply()
  {
    kingdomPile = new Card[10];
    basePile = new Card[7];
  }

  void setupBase()
  {
    baseQuantity[0] = 8;
    for (int i = 0; i < 8; i++) basePile[0] = new Card("Province", 8, 0, 0, 0, 6);
    baseQuantity[1] = 8;
    for (int i = 0; i < 8; i++) basePile[1] = new Card("Duchy", 5, 0, 0, 0, 3);
    baseQuantity[2] = 8;
    for (int i = 0; i < 8; i++) basePile[2] = new Card("Estate", 2, 0, 0, 0, 1);
    baseQuantity[3] = 8;
    for (int i = 0; i < 8; i++) basePile[3] = new Card("Curse", 0, 0, 0, 0, -1);
    baseQuantity[4] = 60;
    for (int i = 0; i < 8; i++) basePile[4] = new Card("Gold", 6, 3);
    baseQuantity[5] = 40;
    for (int i = 0; i < 8; i++) basePile[5] = new Card("Silver", 3, 2);
    baseQuantity[6] = 30;
    for (int i = 0; i < 8; i++) basePile[6] = new Card("Copper", 0, 1);
  }

  void setupKingdom()
  {
    for (int i = 0; i < kingdomPile.length; i++)
    {
      kingdomQuantity[i] = 10;
      // get card from pool
    }
  }
}
