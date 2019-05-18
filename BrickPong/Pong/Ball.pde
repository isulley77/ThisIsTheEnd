class Ball extends MovableElement{

  
  public Ball(float x, float y, float w, float h){
    setX(x);
    setY(y);
    setSpeed(2.0, 3.0);
    
   
  }
  public void display(){
    ellipse(getX(), getY(), 50, 50);
  }
  
  public void move(){
    xCord += xSpeed;
    yCord += ySpeed;
    
     if(getX() > 700 || getX() < 0){
      setSpeed(getXSpeed() * -1.0, getYSpeed()); 
    }
    
    if(getY() > 700 || getY() < 0){
      setSpeed(getXSpeed(), getYSpeed() * -1.0); 
    }
  }
}
