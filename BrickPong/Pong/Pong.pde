boolean upL, downL, upR, downR;
boolean paused = false;


int level = 10;
int score = 0;
int p1Score = 0;
int p2Score = 0;

float r1 = random(255);
float r2 = random(255);
float r3 = random(255);



Ball b;
PongPaddle p;
PongPaddle p2;
Brick brick;
Brick bricks[] = new Brick[level];



void setup() {


  size(1400, 700);

  b = new Ball(700.0, 350.0, 50.0, 50.0);
  p = new PongPaddle(100.0, 350.0, 7.0);
  p2 = new PongPaddle(1300.0, 350.0, 7.0);
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
  brickDisplay();


  //move
  p.move(upL, downL);
  p2.move(upR, downR);
  b.move();
  //brick.move();
  b.bounce(p);
  b.bounce(p2);
  brickBounce();
  //pause();
  userInter();
  keyPressed();
  keyReleased();
}

void keyPressed() {
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
  if (key == 'r' || key == 'R') {
  }
}


void brickGen() {
  float brickWidth = 1100.0;
  float brickHeight = 600.0;

  for (int counter = 0; counter < level; counter++) {
    bricks[counter] = new Brick(brickWidth, brickHeight, 0.0);

    brickWidth = brickWidth - (random(3) + 1) *100.0;
    if (brickWidth < 300) {
      brickWidth = 1100.0 - (random(3) + 1) *100.0;
    }
    brickHeight = brickHeight - (random(2) + 1) * 25.0;
  }
}

void brickDisplay() {
  for (Brick b : bricks) {
    if ( b != null) {
      b.display();
    }
  }
}

void brickBounce() {
  for (Brick brick : bricks) {
    b.bounce(brick);
  }
}

void userInter(){

  stroke(255);
  fill(255);
  textSize(64);
  text(score, 700.0, 50.0);
  
  text(p1Score, 100.0, 50.0);
  text(p2Score, 1300.0, 50.0);


}


void init() {
  frameCount = -1;
}

/*
void pause() {
  if (paused) {
    noLoop();
    stroke(0);
    fill(random(255), random(255), random(255));
    rect(0.0, 0.0, 1400.0, 700.0);
    stroke(0);
    fill(random(255), random(255), random(255));
    textSize(64);
    text("Paused", 600.0, 350.0);
  }
  }
  
  */
