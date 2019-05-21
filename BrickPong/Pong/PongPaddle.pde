public class PongPaddle extends MovableElement{

  public boolean upL, downL, upR, downR;
  
  public PongPaddle(float x, float y, float ySpeed){
    setX(x);
    setY(y);
    setSpeed(0.0, ySpeed);
  }
  
  public void display(){
    rect(xCord, yCord, 50, 100);
  }
  
  public void move(){
    if (upL) {
      yCord = yCord - ySpeed;
    }
    if (downL) {
      yCord = yCord + ySpeed;
    }
  }
  
  public void keyPressed(){
    if (key == 'w' || key == 'W') {
    upL = true;
  }
  if (key == 's' || key == 'S') {
    downL = true;
  }
  if (key == 'i') {
    upR = true;
  }
  if (keyCode == 'k') {
    downR = true;
  }
}

}
