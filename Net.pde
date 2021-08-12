class Net {

  Net () {
  }

  void display() {
    for (int i = 0; i < 70; i++) {
      if (i%2 == 0) {
        fill(255);
      } else {
        fill(0);
      }
      rect(width/2, i*8, 6, 8);
    }
  }
}
