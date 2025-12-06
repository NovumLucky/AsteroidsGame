class Bullet extends Floater {

  Bullet(Spaceship theShip) {
    // Start at the ship's center
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();

    // Copy ship speed and direction
    myXspeed = theShip.getXspeed();
    myYspeed = theShip.getYspeed();
    myPointDirection = theShip.getDirection();

    // Give bullet forward push
    accelerate(6.0);
  }

  // Custom show() method (no @Override)
  public void show() {
    fill(255);
    noStroke();
    ellipse((float)myCenterX, (float)myCenterY, 8, 8);
  }

  public double getRadius() {
    return 4;
  }
}
