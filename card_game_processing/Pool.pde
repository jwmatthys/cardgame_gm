class Pool
{
  // Contains all of the various kingdom cards
  
  ArrayList<Card> kingdomCard;
  ArrayList<Card> recommendedCard;
  boolean useRecommended;
  int cardNum = 0;
  
  Pool()
  {
    useRecommended = false;
    kingdomCard = new ArrayList<Card>();
  }

  Pool(boolean rec)
  {
    useRecommended = rec;
    recommendedCard = new ArrayList<Card>();
  }
  
  // Create cards here!!
  void createRecommendedCards()
  {
    recommendedCard.add(new Card("Village", 3, 0, 2, 0, 0));
  }
  
  
  Card getKingdomCard()
  {
    return kingdomCard.get(cardNum++);
  }

  Card getRecommendedCard()
  {
    return recommendedCard.get(cardNum++);
  }
  
  void shuffle(ArrayList<Card> pool)
  {
    Collections.shuffle(pool);
  }
}
