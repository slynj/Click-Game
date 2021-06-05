int timer = 0;  //intial value of timer is 0

void timer() {
  //because loop counts the frame rate, loop%60 == 0 means every second
  if (gameState == "game") {
    if (loop % 60 == 0) {
      timer++;
    } 
    textSize(30);
    textAlign(RIGHT);
    text("time: " + timer + "  ", width, height/10);
  }
}
