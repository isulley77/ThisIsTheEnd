   public boolean upL, downL, upR, downR;
  
  
  Ball b = new Ball(350.0, 350.0, 50.0, 50.0);
  PongPaddle p = new PongPaddle(100.0, 100.0, 2.0);
  Brick brick = new Brick( 300.0, 600.0, 2.0);
  
  void contactPaddle(){
  if (b.xCord - b.width/2 < p.xCord + p.width/2 && b.yCord - b.height/2 < p.yCord + p.height/2 && b.yCord + b.height/2 > p.yCord - p.height/2 ) {
    if (b.xSpeed < 0) {
      b.xSpeed = b.xSpeed * -1;
    }
  }
  else if (b.xCord + b.width/2 > p.xCord - p.width/2 && b.yCord - b.height/2 < p.yCord + p.height/2 && b.yCord + b.height/2 > p.yCord - p.height/2 ) {
    if (b.xSpeed > 0) {
      b.xSpeed = b.xSpeed*-1;
    }
  }  
 }
  void setup() {
    size(1400, 700);
    
  }
  
  void draw() {
    background(0);
    stroke(255);
    fill(random(255), random(255), random(255));
    b.display();
    p.display();
    p.move(upL, downL);
    brick.display();
    brick.move();
    
    b.move();
    contactPaddle();
   
    

    //p.keyPressed();
    //p.move();
    
 
    

  
  }
  
    
  public void keyPressed(){
    if (key == 'w' || key == 'W') {
    upL = true;
    }
    if (key == 's' || key == 'S') {
      downL = true;
    }
    if (key == 'i' || key == 'I') {
      upR = true;
    }
    if (key == 'k' || key == 'K') {
      downR = true;
    }
  }
  
  public void keyReleased(){
  
        if (key == 'w' || key == 'W') {
    upL = false;
    }
    if (key == 's' || key == 'S') {
      downL = false;
    }
    if (key == 'i' || key == 'I') {
      upR = false;
    }
    if (key == 'k' || key == 'K') {
      downR = false;
    }
  

  }


 
