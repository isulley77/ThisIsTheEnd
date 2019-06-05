public class Brick extends MovableElement{

  //# of hits that can be endured
  int health = 1;
  int index;

  
  
  //Constructor
  public Brick(float x, float y, float ySpeed){
    
    //set params
    setX(x);
    setY(y);
    setSpeed(0.0,ySpeed);
    setHeight(25.0);
    setWidth(100.0);
  }

  //display the brick
 void display(){
    rect(this.xCord, this.yCord, getWidth() , getHeight());
  }

  
/*  public void move(){
    yCord = yCord - ySpeed; 
  
  }
  */
  
  
  //break the brick
  public void remove(){
  this.setX(-10000.0); 
  this.setY(-10000.0);
  score += 1;
    } 
  
}
