int score = 0;    //initial score is 0

//draws the score
void drawScore() {
  textAlign(CENTER);
  textSize(80);
  fill(0);
  text ("score: " + score, width*0.75, height*0.9);
  //text ("score: " + score, width*0.55, height*0.9);
}
