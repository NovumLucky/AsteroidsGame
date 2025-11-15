Star[] doob = new Star[200];
Spaceship goob ;

public void setup() 
{
  size (800,800);
  goob = new Spaceship();
  for(int i = 0; i < doob.length ; i ++){
  doob[i] = new Star();
  }
}
public void draw() 
{
 background(0);
  for(int i = 0; i < doob.length; i++)
  doob[i].show();
  goob.show();
  goob.move();
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
