Star[] doob = new Star[200];
Spaceship goob ;
ArrayList<asteroid> boog = new ArrayList<asteroid>();
public void setup() 
{
  size (800,800);
  goob = new Spaceship();
  for(int i = 0; i < doob.length ; i ++){
  doob[i] = new Star();
  }
  for (int i = 0; i < 7; i++)
  {
    boog.add(new asteroid());
  }
}
public void draw() 
{
 background(0);
  for(int i = 0; i < doob.length; i++)
  {
  doob[i].show();
  }
  goob.show();
  goob.move();
  for (int i = 0; i < boog.size(); i++) {
  asteroid poob = boog.get(i);
  poob.move();
  poob.show();
  }
  for (int i = boog.size() - 1; i >= 0; i--) {
  if (collides(goob, boog.get(i))) {
    boog.remove(i);
  }

}
  //your code here
}
void keyPressed()
{
  if (key == 'w')
  goob.accelerate();
  if (key == 'q')
  goob.turnLeft();
  if (key == 'e')
  goob.turnRight();
  if (key == 'h')
  goob.hyperspace();
}
boolean collides(Spaceship s, asteroid a) {
  float d = dist(
    (float)s.getX(), (float)s.getY(),
    (float)a.getX(), (float)a.getY()
  );
  return d < s.getRadius() + a.getRadius();
}
