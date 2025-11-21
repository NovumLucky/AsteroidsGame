class Spaceship extends Floater  
{   
  public Spaceship() {
    corners = 4;
    xCorners = new int [corners] ;
    yCorners = new int [corners] ;
    //shape of my triangular ship
    //tip
    xCorners[0] = -8;
    yCorners[0] = -8;
    //bottom corner
    xCorners[1] = -3;
    yCorners[1] = 0;
    //right fin
    xCorners[2] = -8;
    yCorners[2] = 8;
    //left fin
     xCorners[3] = 16;
    yCorners[3] = 0;
    
    myColor = color(250,158,0);
    myCenterX = width/2;
    myCenterY = height/2;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = Math.random()*360;
  }
    public void turnLeft()
    {
      turn(-10);
  }
  public void turnRight()
  {
      turn(10);
  }
  public void accelerate()
  {
    super.accelerate(0.1);
  }
  public void hyperspace()
  {
    myCenterX = Math.random()*width;
    myCenterY = Math.random()*width;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = Math.random()*360;
  }
  public double getX() { return myCenterX; }
public double getY() { return myCenterY; }
public double getRadius() { return 25; }
  }
