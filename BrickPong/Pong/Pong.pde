boolean upL, downL, upR, downR;
boolean paused = false;
int level = 10;

  float r1 = random(255);
  float r2 = random(255);
  float r3 = random(255);
  
  float brickWidth = 1100.0;
  float brickHeight = 600.0;

  Ball b;
  PongPaddle p;
  PongPaddle p2;
  Brick brick;
  Brick[] bricks  = new Brick[level];
  
  
  
  void setup() {


    size(1400, 700);

    b = new Ball(350.0, 350.0, 50.0, 50.0);
    p = new PongPaddle(100.0, 100.0, 7.0);
    p2 = new PongPaddle(1300.0, 100.0, 7.0);
    brickGen();
    
   


  }

  void draw() {

    //diplay world and elements
    background(0);
    stroke(255);

    fill(r1, r2, r3);
    b.display();

    fill(r3, r1, r2);
    p.display();
    p2.display();
    
    fill(r2, r3, r1);
    //brick.display();
    //displayBricks();


    //move
    p.move(upL, downL);
    p2.move(upR, downR);
    b.move();
    //brick.move();
    b.bounce(p);
    b.bounce(p2);
    keyPressed();
    keyReleased();
    

}

void keyPressed(){
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

public void keyReleased() {

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


void brickGen(){
 while(level > 0){
    if(brickWidth > 300 && brickHeight > 100){  
    bricks[level - 1] = new Brick(brickWidth - 100.0, brickHeight, 0.0);
    brickWidth = brickWidth - 200.0;
    }else{
       brickWidth = 1100.0;
       brickHeight =-  random(2) + 1.0 * 25.0 ;
    }
    level--;
 }
}
