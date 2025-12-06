Star[] doob = new Star[200];
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
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
 for (int i = 0; i < bullets.size(); i++) {
  bullets.get(i).move();
  bullets.get(i).show();
}
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
  // Check every bullet
for (int i = 0; i < bullets.size(); i++) {
  Bullet bullet = bullets.get(i);

  // Check every asteroid
  for (int j = 0; j < boog.size(); j++) {
    asteroid rock = boog.get(j);
    float d = dist(
      (float)bullet.myCenterX, 
      (float)bullet.myCenterY,
      (float)rock.getX(), 
      (float)rock.getY()
    );
    if (d < rock.getRadius()) {
      boog.remove(j);
      bullets.remove(i);
      i--;
      break;
    }
  }
}
}


void keyPressed()
{
    if (key == ' ') {   // space bar shoots
    bullets.add(new Bullet(goob));
  }
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
