class Deck {
  int deckSize;
  int discardIndex = 0;
  int existingDeckSize;
  ArrayList<Card> deck;

  Deck () {
    deck = new ArrayList<Card>();
    initializeDeck();
    shuffleDeck();
  }

  void initializeDeck()
  {
    for (int i = 0; i < 7; i++) {
      deck.add(new Card("Copper", 0, 1));
    }
    for (int i = 0; i < 3; i++) {
      deck.add(new Card("Estate", 1, 0, 0, 0, 1));
    }
  }
  
  void addCard(Card c)
  {
    deck.add(c);
  }
  
  int getSize()
  {
    return deck.size();
  }
  
  Card getTopCard()
  {
    if (discardIndex < existingDeckSize)
    {
      return deck.get(discardIndex++);
    }
    else
    {
      println("===========deck exhausted - shuffling");
      shuffleDeck();
      discardIndex = 0;    
      return deck.get(discardIndex++);
    }
  }
  
  void shuffleDeck()
  {
    Collections.shuffle(deck);
    discardIndex = 0;
    existingDeckSize = deck.size();
  }
  
  int getVictoryPoints()
  {
    int v = 0;
    for (Card c : deck)
    {
      v += c.getPoint();
    }
    return v;
  }
}
