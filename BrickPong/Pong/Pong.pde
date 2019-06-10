boolean upL, downL, upR, downR;
boolean paused = false;
boolean startScreen = true;
boolean controlScreen = false;
boolean game = false;
boolean onePlayer;

int level = 10;
int score = 0;
int p1Score = 0;
int p2Score = 0;

float r1 = random(255);
float r2 = random(255);
float r3 = random(255);

PFont font1;



Ball b;
PongPaddle p;
PongPaddle p2;
Brick brick;
Brick bricks[] = new Brick[level];



void setup() {


  font1 = loadFont("SitkaSubheading-Bold-48.vlw");


  size(1400, 700);

  b = new Ball(700.0, 350.0, 50.0, 50.0);
  p = new PongPaddle(25.0, 350.0, 15.0);
  p2 = new PongPaddle(1350.0, 350.0, 15.0);
  brickGen();
}

void draw() {

  textFont(font1);  

  if (startScreen) {
    introScreen();
  }


  if (game) {
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

  if (paused) {
    pauseScreen();
  }
  
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
  if(key == 'p'){
    game = !game;
    paused = !paused;
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
  if (key == 'p' || key == 'P') {
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

void userInter() {

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


void pauseScreen() {
  stroke(0);
  fill(r1, r1, r1);
  rect(0.0, 0.0, 1400.0, 700.0);
  stroke(0);
  fill(r2, r2, r2);
  textSize(64);
  text("Paused", 600.0, 350.0);
}



void introScreen() {

  //Setup Background

  fill(r1, r2, r3);
  rect(0.0, 0.0, 1400.0, 700.0);

  //Set Title
  textSize(64);
  fill(r1, r1, r1);
  textAlign(CENTER);
  text("BrickPong", 700.0, 350.0);

  //Options
  textSize(32);

  fill(r3, r2, r1);
  rect(515.0, 420.0, 175.0, 40.0);
  fill(r1, r1, r1);
  text("One Player", 600.0, 450.0);

  fill(r3, r2, r1);
  rect(715.0, 420.0, 175.0, 40.0);
  fill(r1, r1, r1);
  text("Two Player", 800.0, 450.0);

  fill(r3, r2, r1);
  rect(625.0, 520.0, 150.0, 40.0);
  fill(r1, r1, r1);
  text("Controls", 700.0, 550.0);
}

void mousePressed() {

  //select one player mode
  if (mouseX > 515.0 - 175.0 && mouseX < 515.0 + 175.0 && 
    mouseY > 420.0 - 40.0 && mouseY < 420.0 + 40.0 &&
    startScreen == true) {
    game = true;
    startScreen = false;
  }
  //select two player mode
  if (mouseX > 715.0 - 175.0 && mouseX < 715.0 + 175.0 && 
    mouseY > 420.0 - 40.0 && mouseY < 420.0 + 40.0 &&
    startScreen == true) {
    game = true;
    startScreen = false;
  }
  
  //select controls menu
  if (mouseX > 625.0 - 150.0 && mouseX < 625.0 + 150.0 && 
    mouseY > 520.0 - 40.0 && mouseY < 520.0 + 40.0 &&
    startScreen == true) {
    controlScreen = true;
    startScreen = false;
  }
  
  /*
  if (mouseX > 0.0 && mouseX < 1400.0 && 
    mouseY > 0.0 && mouseY < 700.0 &&
    paused == true) {
      paused = false;
  }
  */
}
