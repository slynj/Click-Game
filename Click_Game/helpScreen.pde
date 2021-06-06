void helpScreen() {
  //background set
  background(150);

  //rectangle that fills the left half of the screen (darker grey part)
  noStroke();
  fill(100);
  rect(0, 0, width/2, height);

  //help img
  image(help, 0, height*0.14, width/2, width/2);    //draw the image

  //how to play title
  textSize(30);
  textAlign(CENTER);
  fill(255);
  text("How to Play", width*0.75, height*0.08);

  textSize(20);
  //array that holds the strings
  String[] rule= new String[15];
  //xy of the text
  float baseTextX = width*0.53;
  float baseTextY = height*0.15;
  rule[0] = "- randomly, the rectangles(a) will fall down";
  rule[1] = "- when they touch the yellow 'ZONE'(b) at the";
  rule[2] = "   bottom, click the button(c) [left button if the";
  rule[3] = "   rectangle is on the left, right if it's one right,";
  rule[4] = "   vice versa]";
  rule[5] = "- if you click the button right on time, the word ";
  rule[6] = "   SUCCESS will appear on (g). if you miss, MISS";
  rule[7] = "   will apear";
  rule[8] = "- also, with the word SUCCESS appearing, you";
  rule[9] = "   will get +10 scores.";
  rule[10] = "- when you miss, you will lose 1 life(f). [you"; 
  rule[11] = "   are given 15 lives when the game starts]";
  rule[12] = "- when you lose all your life, the game ends";
  rule[13] = "- also, there is a count-up timer(e) to calculate";
  rule[14] = "   how long in seconds you survived for";

  //gets the next line and print it with increased Y
  for (int i = 0; i < rule.length; i++) {
    textAlign(LEFT);
    text(rule[i], baseTextX, baseTextY);
    baseTextY += height/20;
  }

  //good luck text
  textSize(23);
  textAlign(CENTER);
  fill(250, 219, 63, 191);
  text("GOOD LUCK!", width*0.75, height*0.92);

  goHome();
}
//draws the home button (+function)
void goHome() {
  //variable declaration
  float restartButtonX = width*0.85;
  float restartButtonY = height*0.91;
  float restartButtonWidth = width/8;
  float restartButtonHeight = height/16;

  //text of the button
  fill(255, 191);   //beige
  textAlign(CENTER);
  textSize(18);
  text ("H O M E", restartButtonX+restartButtonWidth/2, restartButtonY+restartButtonHeight/1.6);

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
    fill(250, 219, 63);   //yellow
    text ("H O M E", restartButtonX+restartButtonWidth/2, restartButtonY+restartButtonHeight/1.6);

    //while hovering, if the mouse is clicked,
    if (click == true) {
      gameState = "main";
    }
  }
}
