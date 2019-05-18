class Ball extends MovableElement{

  
  public Ball(float x, float y, float w, float h){
    setX(x);
    setY(y);
    
    ellipse(getX(), getY(), w, h);
    setSpeed(2.0, 3.0);
    
       
   setX(getX() + getXSpeed());
   setY(getY() + getYSpeed());
  }
}
