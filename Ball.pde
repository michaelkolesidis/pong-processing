class Ball {
  float x;
  float y;
  float w;
  float h;
  float speedX;
  float speedY;

  Ball () {
    x = width/2;
    y = height/2;
    w = 10;
    h = 10;
    speedX = 2*level;
    speedY = level;
  }

  void display() {
    ellipseMode(CENTER);
    noStroke();
    fill(255);
    rect(x, y, w, h);
  }

  void move(RightPaddle pR, LeftPaddle pL) {
    x += speedX;
    y += speedY;

    if (x+w >= pR.x && x <= pR.x + pR.w && y+w >= pR.y && y <= pR.y + pR.h) {  // Ball hits right paddle
      paddle.play();
      speedX *= -1;
    }

    if (x >= pL.x && x < pL.x+pL.w && y+h >= pL.y && y <= pL.y + pL.h) {    // Ball hits left paddle
      paddle.play();
      speedX *= -1;
    }

    if (y <= 0 || y+h >= height) {    // Ball hits top or bottom of the screen
      sides.play();
      speedY *= -1;
    }

    if (x > width) {     // If ball leaves screen from the right side
      point.play();
      x = width/2;           // Ball is returned to the middle of the width of the screen
      score.scoreL ++;       // Left score increases by one
    }

    if (x < 0) {             // If ball leaves screen from the left side
      point.play();
      x = width/2;           // Ball is returned to the middle of the width of the screen
      score.scoreR ++;       // Right score increases by one
    }
  }
}
