class Star //note that this class does NOT extend Floater
{
  private int myX, myY;
  public Star(){
    myX = (int)(Math.random()*800);
    myY = (int)(Math.random()*800);
    
}
 public void show()
 {
   fill(250);
   ellipse(myX,myY,3,3);
 }
 
}
