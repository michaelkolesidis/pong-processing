import processing.sound.*;  // Import Processing Sound library
SoundFile paddle;
SoundFile sides;
SoundFile point;

PFont font;

Ball ball;
Score score;
Net net;
RightPaddle paddleR;
LeftPaddle paddleL;
int level = 2;    // Level determines ball speed and left paddle speed

void setup() {
  // Set screen size
  size(600, 400);
  // Cursor is not visible
  noCursor();
  // Create sound files
  paddle = new SoundFile(this, "pong_paddle.wav");
  sides = new SoundFile(this, "pong_sides.wav");
  point = new SoundFile(this, "pong_point.wav");
  // Create font file
  font = createFont("bit5x3.ttf", 48);
  // Initialize objects
  ball = new Ball();
  score = new Score();
  net = new Net();
  paddleR = new RightPaddle();
  paddleL = new LeftPaddle();
}

void draw() {
  background(0);
  score.display();
  net.display();
  ball.display();
  ball.move(paddleR, paddleL);
  paddleL.display();
  paddleL.move();
  paddleR.displayAndMove(mouseY);   // Right paddle is controlled by mouse
  //paddleR.move();
  //paddleR.display();               // Right paddle is controlled by keys
}
