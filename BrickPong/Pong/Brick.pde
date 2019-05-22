public class Brick extends MovableElement{

  //# of hits that can be endured
  int health;
  
  
  //Constructor
  public Brick(float x, float y, float ySpeed){
    
    //set params
    setX(x);
    setY(y);
    setSpeed(0.0,ySpeed);
  }

  //display the brick
  public void display(){
    rect(xCord, yCord, 100.0, 25.0);
  }
  
  public void move(){
    yCord = yCord - ySpeed; 
  
  }
  
  
  //break the brick
  public void brickBreaker(){
  
    if(health  >= 0){
      
    
    
    } 
  
  }
}
