class Ball extends MovableElement{

  //constructor
  public Ball(float x, float y, float w, float h){
    setX(x);
    setY(y);
    setSpeed(2.0, 3.0);
    
   
  }
  //display the ball
  public void display(){
    ellipse(getX(), getY(), 50, 50);
  }
  
  //move the ball
  public void move(){
    xCord += xSpeed;
    yCord += ySpeed;
    
     if(getX() > 1400 || getX() < 0){
      setSpeed(getXSpeed() * -1.0, getYSpeed()); 
    }
    
    if(getY() > 700 || getY() < 0){
      setSpeed(getXSpeed(), getYSpeed() * -1.0); 
    }
  }
  
  //bounce off pongPaddle
  public void bounce(PongPaddle p){
    if(this.getX() <= p.getX() + p.getWidth()){
    
    setSpeed(getXSpeed() * -1, getYSpeed());
    }
  
  }
 
}
