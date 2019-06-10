public class PongPaddle extends MovableElement{

 
  
  public PongPaddle(float x, float y, float ySpeed){
    setX(x);
    setY(y);
    setSpeed(0.0, ySpeed);
    setHeight(175.0);
    setWidth(25.0);
  }
  
  public void display(){
    rect(xCord, yCord, this.width, this.height);
  }
  
  public void move(boolean upL, boolean downL){
    if (upL) {
      yCord = yCord - ySpeed;
    }
    if (downL) {
      yCord = yCord + ySpeed;
    }
    
    if(getY() <= 0.0){
      setY(0.0);
    }
    if(getY() + getHeight() >= 700.0){
       setY(700.0 - this.getHeight());
    }
  }

  
  
}
