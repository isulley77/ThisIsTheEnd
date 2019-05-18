public class abstract MovableElement{

  //Elements position
  private Float xCord;
  private Float ycord;
  
  //Elements speed
  private Float xSpeed;
  private Float ySpeed;
  
  public int getX(){
    return xCord;
  }
  
  public int getY(){
    return yCord;
  }
  
  public void speedUp(){
    xSpeed *= 1.15;
    ySpeed *= 1.15;
  }

  public void slowDown(){
    xSpeed *= .85;
    ySpeed *= .85;
  }



}
