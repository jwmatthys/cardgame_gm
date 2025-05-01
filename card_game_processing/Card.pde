class Card {
  int treasure;
  int action;
  int buy;
  int point;
  int cost;
  String name;

  // Need to add +card as well
  Card (String n, int c, int t, int a, int b, int p) {
    name = n;
    treasure = t;
    action = a;
    buy = b;
    point = p;
    cost = c;
  }
  
  Card (String n, int c, int t)
  {
    name = n;
    treasure = t;
    cost = c;
  } 
  
  int getTreasure() { return treasure; }
  int getAction() { return action; }
  int getBuy() { return buy; }
  int getPoint() { return point; }
  int getCost() { return cost; }
  String getName() { return name; }
}
