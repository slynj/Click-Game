void endScreen() {
  //end screen graphics (text)
  background(70);

  textAlign(CENTER);
  fill(255);
  textSize(80);
  text("GAME ENDED!", width/2, height/5);
  
  fill(250, 219, 63, 191);
  textSize(30);
  text("your score", width/2, height*0.35);
  
  textSize(250);
  text(score, width/2, height*0.66);
  
  fill(229, 159, 44, 191);
  textSize(50);
  text("you lasted for [ " + timer + " ] seconds!", width/2, height*0.9);
  
  textAlign(LEFT);
  fill(196);
  textSize(15);
  text("    by: Lyn Jeong", 0, height*0.97);
  
  restartButton ();
}


void restartButton() {
  //variable declaration
  float restartButtonX = width*0.8;
  float restartButtonY = height*0.66;
  float restartButtonWidth = width*0.23;
  float restartButtonHeight = height/8;

  //text of the button
  fill(255, 191);   //beige
  textAlign(CENTER);
  textSize(30);
  text ("R E S T A R T", restartButtonX/2, restartButtonY/2);

  //rect part of the button
  fill(250, 219, 63, 191);   //yellow
  noStroke();                //no stroke
  rect(restartButtonX, restartButtonY, restartButtonWidth, restartButtonHeight, 20);  //draws the button

  //collision detection; if the mouse is on the button
  if (mouseX > restartButtonX && mouseX < restartButtonX + restartButtonWidth && mouseY > restartButtonY && mouseY < restartButtonY + restartButtonHeight) {
    //button when hovered
    fill(255, 191);   //beige
    rect(restartButtonX, restartButtonY, restartButtonWidth, restartButtonHeight, 20);  //draws the button

    //text when hovered
    fill(250, 219, 63, 191);   //yellow
    text ("R E S T A R T", restartButtonX*1.13, restartButtonY*1.13);

    //while hovering, if the mouse is clicked,
    if (click == true) {
      gameState = "main";
    }
  }
}
