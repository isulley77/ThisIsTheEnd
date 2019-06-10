class Ball extends MovableElement {

  
  //constructor
  public Ball(float x, float y, float w, float h) {
    setX(x);
    setY(y);
    setSpeed(6.0, 3.0);
    setHeight(h);
    setWidth(w);
  }
  //display the ball
  public void display() {
    ellipse(getX(), getY(), 50, 50);
  }

  //move the ball
  public void move() {
    xCord += xSpeed;
    yCord += ySpeed;

    if (getX() > 1400 || getX() < 0) {
      setSpeed(getXSpeed() * -1.0, getYSpeed());
    }

    if (getY() > 675 || getY() < 25) {
      setSpeed(getXSpeed(), getYSpeed() * -1.0);
    }

     if(getX() < 45){
       p2Score++;
       init();
     }
     if( getX() > 1355){
       p1Score++;
       init();
     }
    
  }

  //bounce off pongPaddle
  
  /*
  public void bounce(PongPaddle b) {

    double distance2 = Math.sqrt(Math.pow((b.getX() + b.getWidth()) - xCord, 2) + (Math.pow(b.getY() - yCord, 2)));
    double distance3 = Math.sqrt(Math.pow((b.getX() + b.getWidth()) - xCord, 2) + (Math.pow((b.getY() + (getHeight() / 2)) - yCord, 2)));
    double distance4 = Math.sqrt(Math.pow((b.getX() + b.getWidth()) - xCord, 2) + (Math.pow((b.getY() + getHeight()) - yCord, 2)));
    if (distance2 < 25.0 || distance4 < 25.0  || distance3 < 25.0) {
      this.setSpeed(getXSpeed() * -1, getYSpeed() * random(2) + .5);
    }
  }
*/
  
  void bounce(PongPaddle p){
    if(b.xCord + b.getXSpeed() >= 1325.0 && b.yCord + b.getYSpeed() >= p.yCord && b.yCord + getYSpeed() <= (p.yCord + p.height)){
      b.setSpeed(getXSpeed() * -1, getYSpeed() * random(2) + .5);
    }
    if(b.xCord +b.getXSpeed() <= 75.0 && b.yCord + b.getYSpeed() >= p.yCord && b.yCord + getYSpeed() <= (p.yCord + p.height)){
      b.setSpeed(getXSpeed() * -1, getYSpeed() * random(2) + .5);
    }
  
  }
  
 /* 
  public void bounce(Brick b) {
    double distance = Math.sqrt(Math.pow(b.getX() - (xCord - getXSpeed()) , 2) + (Math.pow(b.getY() - (yCord - getYSpeed()), 2)));
    double distance2 = Math.sqrt(Math.pow((b.getX() + b.getWidth()) - (xCord - getXSpeed()), 2) + (Math.pow(b.getY() -(yCord - getYSpeed()), 2)));
    double distance3 = Math.sqrt(Math.pow(b.getX() - (xCord - getXSpeed()), 2) + (Math.pow((b.getY() + b.getHeight()) - (yCord - getYSpeed()), 2)));
    double distance4 = Math.sqrt(Math.pow((b.getX() + b.getWidth()) - (xCord - getXSpeed()), 2) + (Math.pow((b.getY() + getHeight()) - (yCord - getYSpeed()), 2)));
    if (distance <= 25.0  || distance2 <= 25.0 || distance3 <= 25.0 || distance4 <= 25.0) {
      this.setSpeed(getXSpeed() * -1, getYSpeed() * random(2) + .25);
      b.health--;
      if(b.health == 0){
        b.remove();
      }
    }
  }
  */
  

  void bounce(Brick brick){
    
    float xEdge = b.xCord;
    float yEdge = b.yCord;
    
    double distance;
    
    
    if(b.xCord < brick.xCord){
      xEdge = brick.xCord;
    }
    else if(b.xCord > brick.xCord + brick.width){
      xEdge = brick.xCord + brick.width;
    }
    
    if(b.yCord < brick.yCord){
      yEdge = brick.yCord;
    }
    else if(b.yCord > brick.yCord + brick.height){
      yEdge = brick.yCord + brick.height;
    }
    
    distance = Math.sqrt(Math.pow(b.xCord - xEdge, 2) + (Math.pow(b.yCord - yEdge, 2))); 
    
    if(distance <= 25.0){
      this.setSpeed(getXSpeed() * -1, getYSpeed() * random(2) + .25);
      brick.remove();
    }
    
  }

}
