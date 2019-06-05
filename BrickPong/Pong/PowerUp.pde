class PowerUp extends MovableElement{
  int type;
  float amount;
  
  
  public PowerUp(float x, float y, float w, float h){
    setX(x);
    setY(y);
    setWidth(w);
    setHeight(h);
    setSpeed(0.0, 3.0);
    type = 1;
    amount = 1.0 + (random(6.0) * 0.15);
    
  
  }
  
  void display(){
    ellipse(getX(), getY(), getWidth(), getHeight());
  
  }

  void move(){
    setY(yCord += ySpeed);

    

  }  

}
