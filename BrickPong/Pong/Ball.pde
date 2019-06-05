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

    if (getY() > 700 || getY() < 0) {
      setSpeed(getXSpeed(), getYSpeed() * -1.0);
    }
    /* 
     if(getX() < 150 || getX() > 1250){
     noLoop();
     }
     */
  }

  //bounce off pongPaddle
  public void bounce(PongPaddle p) {
    double distance = Math.sqrt(Math.pow(p.getX() - xCord, 2) + (Math.pow(p.getY() - yCord, 2)));
    if (distance < 25.0) {
      this.setSpeed(getXSpeed() * -1, getYSpeed() * random(2) + .5);
    }
  }

  public void bounce(Brick b) {
    double distance = Math.sqrt(Math.pow(b.getX() - xCord, 2) + (Math.pow(b.getY() - yCord, 2)));
    double distance2 = Math.sqrt(Math.pow((b.getX() + b.getWidth()) - xCord, 2) + (Math.pow(b.getY() - yCord, 2)));
    double distance3 = Math.sqrt(Math.pow(b.getX() - xCord, 2) + (Math.pow((b.getY() + b.getHeight()) - yCord, 2)));
    double distance4 = Math.sqrt(Math.pow((b.getX() + b.getWidth()) - xCord, 2) + (Math.pow((b.getY() + getHeight()) - yCord, 2)));
    if (distance < 25.0 || distance2 < 25.0 || distance3 < 25.0 || distance4 < 25.0) {
      this.setSpeed(getXSpeed() * -1, getYSpeed() * random(2) + .5);
      b.health--;
      if(b.health == 0){
        b.remove();
      }
    }
  }
}
