class Spaceship extends Floater  
{   
  public Spaceship() {
    corners = 3;
    xCorners = new int [corners] ;
    yCorners = new int [corners] ;
    //shape of my triangular ship
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = -8;
    yCorners[1] = 8;
    xCorners[2] = 16;
    yCorners[2] = 0;
    
    myColor = color(255,255,255);
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
  }
