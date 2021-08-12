class LeftPaddle {
  float x;
  float y;
  float w;
  float h;

  LeftPaddle() {
    w = 20;
    h = 60;
    x = 2*w;
    y = height/2;  // Left paddle always starts at the middle of the screen
  }

  void display() {
    noStroke();
    fill(255);
    rect(x, y, w, h);
  }

  void move() {                                 // Left paddle is controlled with W and S keys   
    if (keyPressed) {
      if (key == 'w' || key == 'W') {
        y -= level*1.5 ;                        // Left paddle speed is determined by level
      }
      if (key == 's' || key == 'S') {
        y += level*1.5;                         // Left paddle speed is determined by level
      }
    }
    y = constrain (y, 0, height-h);             // Left paddle is constrained within the screen
  }
}
