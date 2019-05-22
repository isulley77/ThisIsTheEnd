  Ball b = new Ball(350.0, 350.0, 50.0, 50.0);
  PongPaddle p = new PongPaddle(100.0, 100.0, 2.0);
  
  void setup() {
    size(700, 700);
    
  }
  
  void draw() {
    background(0);
    stroke(255);
    fill(random(255), random(255), random(255));
    b.display();
    b.move();
    p.display();
    p.keyPressed();
    p.move();
 
    

  
  }


 
