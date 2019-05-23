public class PongPaddle extends MovableElement{

 
  
  public PongPaddle(float x, float y, float ySpeed){
    setX(x);
    setY(y);
    setSpeed(0.0, ySpeed);
  }
  
  public void display(){
    rect(xCord, yCord, 50, 100);
  }
  
  public void move(boolean upL, boolean downL){
    if (upL) {
      yCord = yCord - ySpeed;
    }
    if (downL) {
      yCord = yCord + ySpeed;
    }
  }

  
  
}
