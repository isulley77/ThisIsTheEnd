abstract class MovableElement{

  //Elements position
  private Float xCord;
  private Float yCord;
  
  //Elements speed
  private Float xSpeed;
  private Float ySpeed;
  
  public float getX(){
    return xCord;
  }
  
  public float getY(){
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

  public void setX(float x){
    xCord = x;
  }
  
  public void setY(float y){
    yCord = y;
  }
  
  public void setSpeed(float x, float y){
    xSpeed = x;
    ySpeed = y;
  }
}
