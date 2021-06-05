

void mainScreen() {
  background(150);
  textSize(50);
  fill(255);
  text ("click click click!!!", width*0.3, height*0.35);
  textSize(100);
  fill(250, 219, 63, 191); 
  text ("RHYTHM GAME", width*0.13, height/2);
  
  playButton();
  helpButton();
}

//draws the playbutton (+functions)
void playButton() {
  //variable declaration
  float playButtonX = width/4;
  float playButtonY = height*0.66;
  float playButtonWidth = width*0.23;
  float playButtonHeight = height/8;
  
  fill(250, 219, 63, 191);   //yellow
  noStroke();                //no stroke
  rect(playButtonX, playButtonY, playButtonWidth, playButtonHeight, 20);  //draws the button
}

//draws the playbutton (+functions)
void helpButton() {
}
