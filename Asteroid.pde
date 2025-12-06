class asteroid extends Floater
{
  double rotSpeed;
  public asteroid(){
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = (int)(Math.random()*(-22));
    yCorners[0] = (int)(Math.random()*(-16));
     xCorners[1] =(int)(Math.random()*(14));
    yCorners[1] = (int)(Math.random()*(-16));
     xCorners[2] = (int)(Math.random()*(26));
    yCorners[2] = (int)(Math.random()*(0));
     xCorners[3] = (int)(Math.random()*(12));
    yCorners[3] = (int)(Math.random()*(20));
     xCorners[4] = (int)(Math.random()*(10));
    yCorners[4] = 0;
    xCorners[5] = -10;
    yCorners[5] = 0;
     rotSpeed = Math.random()*8;
     myColor = color(150,150,150);
    myCenterX = (int)(Math.random()*100);
    myCenterY = (int)(Math.random()*100);
    myXspeed = (float)(Math.random()*10);
    myYspeed = (float)(Math.random()*10);
    myPointDirection = Math.random()*360;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public void show(){
    super.show();
  }
  public double getX() { return myCenterX; }
public double getY() { return myCenterY; }
public double getRadius() { return 30; }
}
