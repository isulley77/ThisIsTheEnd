public boolean upL, downL, upR, downR;
public boolean paused = false;

  float r1 = random(255);
  float r2 = random(255);
  float r3 = random(255);

  Ball b;
  PongPaddle p;
  Brick brick;
  void setup() {


    size(700, 700);

    b = new Ball(350.0, 350.0, 50.0, 50.0);
    p = new PongPaddle(100.0, 100.0, 2.0);
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

    fill(r2, r3, r1);
    brick.display();


    //move
    p.move(upL, downL);
    b.move();
    brick.move();




    //p.keyPressed();
    //p.move();

   pause();


  b = new Ball(350.0, 350.0, 50.0, 50.0);
  p = new PongPaddle(100.0, 100.0, 2.0);
 brick  = new Brick( 300.0, 600.0, 2.0);

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
  //contactPaddle();
  b.bounce(p);

}

//p.keyPressed();
//p.move();

/*
void contactPaddle() {
  if (b.xCord - b.width/2 < p.xCord + p.width/2 && b.yCord - b.height/2 < p.yCord + p.height/2 && b.yCord + b.height/2 > p.yCord - p.height/2 ) {
    if (b.xSpeed < 0) {
      b.xSpeed = b.xSpeed * -1;
    }
  } else if (b.xCord + b.width/2 > p.xCord - p.width/2 && b.yCord - b.height/2 < p.yCord + p.height/2 && b.yCord + b.height/2 > p.yCord - p.height/2 ) {
    if (b.xSpeed > 0) {
      b.xSpeed = b.xSpeed*-1;
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
