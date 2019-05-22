public class Brick extends MovableElement{

  public Brick(float x, float y, float ySpeed){
    
    setX(x);
    setY(y);
    setSpeed(0.0,ySpeed);
  }

  public void display(){
    rect(xCord, yCord, 100.0, 25.0);
  }
}
