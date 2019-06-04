public class Brick extends MovableElement{

  //# of hits that can be endured
  int health;
  int index;

  
  
  //Constructor
  public Brick(float x, float y, float ySpeed){
    
    //set params
    setX(x);
    setY(y);
    setSpeed(0.0,ySpeed);
  }

  //display the brick
 void display(){
    rect(this.xCord, this.yCord, 100.0, 25.0);
  }

  
/*  public void move(){
    yCord = yCord - ySpeed; 
  
  }
  */
  
  
  //break the brick
  public void remove(){
  
    if(health  <= 0){
      
      bricks[this.index] = null;
      
  
    
    } 
  
  }
}
