class Ball extends MovableElement{

  //constructor
  public Ball(float x, float y, float w, float h){
    setX(x);
    setY(y);
    setSpeed(6.0, 3.0);
    setHeight(h);
    setWidth(w);
    
    
   
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
   /* 
    if(getX() < 150 || getX() > 1250){
      noLoop();
    }
    */
  }
  
  //bounce off pongPaddle
  public void bounce(PongPaddle p){
    if(this.getX() - (this.getWidth() / 2) <= p.getX() + p.getWidth() && this.getY() - (this.getHeight() / 2) > p.getY() && this.getY() + (this.getHeight() / 2 ) < p.getY() + p.getHeight()){
    
    this.setSpeed(getXSpeed() * -1, getYSpeed() * random(3) + .5);
    }
  
  }
 
}
