import java.util.Collections;

Deck deck;
Hand hand;
int round = 1;

void setup()
{
  deck = new Deck();
  hand = new Hand();
  frameRate(1);
}

void draw()
{
  println("== Round " + round++ + " ==");
  println("Victory points: " + deck.getVictoryPoints());
  hand.drawHand(deck);
  hand.printHand();
  
  if (hand.treasureInHand() >= 8) deck.addCard(new Card("Province", 8, 0, 0, 0, 6));
  else if (hand.treasureInHand() >= 6) deck.addCard(new Card("Gold", 6, 3));
  //else if (hand.treasureInHand() >= 5) deck.addCard(new Card("Duchy", 5, 0, 0, 0, 3));
  else if (hand.treasureInHand() >= 3) deck.addCard(new Card("Silver", 3, 2));
  //else if (hand.treasureInHand() >= 3) deck.addCard(new Card("Estate", 2, 0, 0, 0, 1));
}
