class Ball extends MovableElement{

  
  public Ball(float x, float y, float w, float h){
    setX(x);
    setY(y);
    
    ellipse(getX(), getY(), w, h);
  
  }
}
