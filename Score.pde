class Score {
  int scoreR;
  int scoreL;

  Score() {
    scoreR = 0;      // Right score is set to zero
    scoreL = 0;      // Left score is set to zero
  }

  void display() {
    textFont(font);
    textSize(96);
    text(scoreL, width/2-width/4.6, 80);
    text(scoreR, width/2+width/6, 80);
  }
}
