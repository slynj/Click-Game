
//what is running when the gameState == main
void mainScreen() {
  drawTitle();
  playButton();
  helpButton();
}

//draws the title
void drawTitle() {
  background(150);
  textSize(50);
  fill(255);
  text ("click click click!!!", width*0.3, height*0.35);
  textSize(100);
  fill(250, 219, 63, 191); 
  text ("RHYTHM GAME", width*0.13, height/2);
}

//draws the playbutton (+functions)
void playButton() {
  //variable declaration
  float playButtonX = width/4;
  float playButtonY = height*0.66;
  float playButtonWidth = width*0.23;
  float playButtonHeight = height/8;

  //text of the button
  fill(255, 191);   //beige
  textSize(50);
  text ("P L A Y", playButtonX*1.13, playButtonY*1.13);

  //rect part of the button
  fill(250, 219, 63, 191);   //yellow
  noStroke();                //no stroke
  rect(playButtonX, playButtonY, playButtonWidth, playButtonHeight, 20);  //draws the button

  //collision detection; if the mouse is on the button
  if (mouseX > playButtonX && mouseX < playButtonX + playButtonWidth && mouseY > playButtonY && mouseY < playButtonY + playButtonHeight) {
    //button when hovered
    fill(255, 191);   //beige
    rect(playButtonX, playButtonY, playButtonWidth, playButtonHeight, 20);  //draws the button

    //text when hovered
    fill(250, 219, 63, 191);   //yellow
    text ("P L A Y", playButtonX*1.13, playButtonY*1.13);

    //while hovering, if the mouse is clicked,
    if (click == true) {
      gameState = "game";
    }
  }
}

//draws the playbutton (+functions)
void helpButton() {
  //variable declaration
  float helpButtonX = width/2;
  float helpButtonY = height*0.66;
  float helpButtonWidth = width*0.23;
  float helpButtonHeight = height/8;

  //text of the button
  fill(255, 191);   //beige
  textSize(50);
  text ("H E L P", helpButtonX*1.07, helpButtonY*1.13);

  fill(250, 219, 63, 191);   //yellow
  noStroke();                //no stroke
  rect(helpButtonX, helpButtonY, helpButtonWidth, helpButtonHeight, 20);  //draws the button

  //collision detection; if the mouse is on the button
  if (mouseX > helpButtonX && mouseX < helpButtonX + helpButtonWidth && mouseY > helpButtonY && mouseY < helpButtonY + helpButtonHeight) {
    //button when hovered
    fill(255, 191);   //beige
    rect(helpButtonX, helpButtonY, helpButtonWidth, helpButtonHeight, 20);  //redraws the button

    //text when hovered
    fill(250, 219, 63, 191);   //yellow
    text ("H E L P", helpButtonX*1.07, helpButtonY*1.13);
    
    //while hovering, if the mouse is clicked,
    if (click == true) {
      gameState = "help";
    }
  }
}
