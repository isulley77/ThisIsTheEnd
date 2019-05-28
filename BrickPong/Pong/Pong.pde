public boolean upL, downL, upR, downR;
public boolean paused = false;
  
  float r1 = random(255);
  float r2 = random(255);
  float r3 = random(255);
  
  Ball b = new Ball(350.0, 350.0, 50.0, 50.0);
  PongPaddle p = new PongPaddle(100.0, 100.0, 2.0);
  Brick brick = new Brick( 300.0, 600.0, 2.0);
  
  void setup() {
    size(700, 700);
    
  }
  
  void draw() {
   
    //diplay world and elements
    background(0);
    stroke(255);
   
    fill(r1, r2, r3);
    b.display();
   
    fill(r3, r1, r2);
    p.display();
 
    fill(r2, r3, r1);
    brick.display();
    
    
    //move
    p.move(upL, downL);
    b.move();
    brick.move();
   
    

    //p.keyPressed();
    //p.move();
    
   pause();
    

  
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
    if (key == ENTER) {
      paused = !paused;
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
  
  
  void pause(){
    if(paused){
      noLoop();
      drawPauseScreen();
    
    }else{
      loop();
    }
  
  }

  void drawPauseScreen(){
  
  }

 