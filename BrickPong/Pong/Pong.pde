public boolean upL, downL, upR, downR;
public boolean paused = false;

  float r1 = random(255);
  float r2 = random(255);
  float r3 = random(255);

  Ball b;
  PongPaddle p;
  PongPaddle p2;
  Brick brick;
  
  
  void setup() {


    size(1400, 700);

    b = new Ball(350.0, 350.0, 50.0, 50.0);
    p = new PongPaddle(100.0, 100.0, 7.0);
    p2 = new PongPaddle(1300.0, 100.0, 7.0);
    brick = new Brick( 300.0, 600.0, 2.0);


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
    brick.display();


    //move
    p.move(upL, downL);
    p2.move(upR, downR);
    b.move();
    brick.move();
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
