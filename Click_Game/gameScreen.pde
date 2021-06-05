
//what is running when the gameState == game
void gameScreen() {
  background(100);  //bkg colour is grey
  //the comments for the funcitons are written where each functions are coded
  drawRect();
  drawBase();
  drawButton();
  drawZone();
  drawLife();
  timer();
  speedControl();
  fallingRect();
  successOrMiss();
  drawScore();
}
