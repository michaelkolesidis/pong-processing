class RightPaddle {
  float x;
  float y;
  float w;
  float h;

  RightPaddle() {
    w = 20;
    h = 60;
    x = width-3*w;
    y = height/2;
  }

  void displayAndMove(float tempY) {
    y = tempY;
    y = constrain (y-h/2, 0, height-h);  // Right paddle is controlled with mouse
    noStroke();
    fill(255);
    rect(x, y, w, h);
  }

  void display() {
    noStroke();
    fill(255);
    rect(x, y, w, h);
  }

  void move() {                           // Right paddle is controlled with Up and Down arrow keys   
    if (keyPressed) {
      if (key == CODED) {              
        if (keyCode == UP) {
          y -= level*1.5 ;                // Right paddle speed is determined by level
        }
        if (keyCode == DOWN) {
          y += level*1.5;                 // Right paddle speed is determined by level
        }
      }
      y = constrain (y, 0, height-h);     // Right paddle is constrained within the screen
    }
  }
}
