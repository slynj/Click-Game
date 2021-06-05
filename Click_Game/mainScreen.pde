

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

  //collision detection; if the mouse is on the button
  if(mouseX > playButtonX && mouseX < playButtonX + playButtonWidth && mouseY > playButtonY && mouseY < playButtonY + playButtonHeight){
    fill(255, 191);   //beige
    rect(playButtonX, playButtonY, playButtonWidth, playButtonHeight, 20);  //draws the button
  }
}

//draws the playbutton (+functions)
void helpButton() {
  //variable declaration
  float helpButtonX = width/2;
  float helpButtonY = height*0.66;
  float helpButtonWidth = width*0.23;
  float helpButtonHeight = height/8;

  fill(250, 219, 63, 191);   //yellow
  noStroke();                //no stroke
  rect(helpButtonX, helpButtonY, helpButtonWidth, helpButtonHeight, 20);  //draws the button
  
  //collision detection; if the mouse is on the button
  if(mouseX > helpButtonX && mouseX < helpButtonX + helpButtonWidth && mouseY > helpButtonY && mouseY < helpButtonY + helpButtonHeight){
    fill(255, 191);   //beige
    rect(helpButtonX, helpButtonY, helpButtonWidth, helpButtonHeight, 20);  //redraws the button
  }
}
