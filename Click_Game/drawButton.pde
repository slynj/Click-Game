//variable declaration
float lineGap;          //the gap between the lines that divides the base rect (= width of a column)
int button = 0;

//draws 3 buttons on the bottom
void drawButton() {
  //variable declaration
  float buttonSide = lineGap - 4;              //the button side length  is equal to line gap - 4 to give space inbetween the buttons
  float buttonLX = baseX;                      //x coordinate of the left button is equal to the x of base rect
  float buttonCX = buttonLX + buttonSide + 6;  //x coordiante of the centre button is x of left button increased by the length of the button
  float buttonRX = buttonCX + buttonSide + 6;  // ^
  float buttonY = baseHeight + width/100;      //y coordinate of the button is base height + 10 (=width/100) 

  //preset for the button
  fill(255);  //button colour white
  noStroke();  //without strokes

  //draws the 3 buttons
  rect(buttonLX, buttonY, buttonSide, buttonSide, 20);
  rect(buttonCX, buttonY, buttonSide, buttonSide, 20);
  rect(buttonRX, buttonY, buttonSide, buttonSide, 20);

  //hover toggle (colour)
  if (mouseY >= buttonY && mouseY <= buttonY + buttonSide) {          //when mouse is within the "y" value buttons are placed in
    if (mouseX >= buttonLX && mouseX <= buttonLX + buttonSide) {      //if mouse X is in left button
      fill(255, 0, 0);                                                //change colour to red
      rect(buttonLX, buttonY, buttonSide, buttonSide, 20);            //over draw the button (rect)
      if (click == true) {        //if mouse pressed;
        button = 1;               //button is 1 (used to connect collision detection with the button click)
      } else {button = 0;}
    }
    if (mouseX >= buttonCX && mouseX <= buttonCX + buttonSide) {     //centre button
      fill(0, 255, 0);                                               //green
      rect(buttonCX, buttonY, buttonSide, buttonSide, 20);
      if (click == true) {
        button = 2;               //2
      } else {button = 0;}
    }
    if (mouseX >= buttonRX && mouseX <= buttonRX + buttonSide) {     //right button
      fill(0, 0, 255);                                               //blue
      rect(buttonRX, buttonY, buttonSide, buttonSide, 20);
      if (click == true) {
        button = 3;              //3
      } else {button = 0;}
    }
  }
}

//draws the yellow 'zone' at the botton
void drawZone() {
  fill(250, 219, 63, 191);    //yellow colour opacity 75%
  rect(baseX, baseHeight*0.9, baseWidth, baseHeight/20);
}
