class Hand
{
  int handSize = 5;
  ArrayList<Card> hand;
  
  Hand() {
  }
  
  void drawHand(Deck d)
  {
    hand = new ArrayList<Card>();
    for (int i = 0; i < handSize; i++)
    {
      hand.add(d.getTopCard());
    }
  }
  
  void drawCard(Deck d)
  {
      hand.add(d.getTopCard());
  }
  
  int treasureInHand()
  {
    int treasure = 0;
    for (Card c : hand)
    {
      treasure += c.getTreasure();
    }
    return treasure;
  }
  
  void printHand()
  {
    for (Card c : hand)
    {
      print (c.getName() + " ");
    }
    println("\n--Treasure in hand: " + treasureInHand()+"--\n");
  }
}
