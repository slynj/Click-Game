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
  //when mouse is within the "y" value that all 3 buttons are placed in
  if (mouseY >= buttonY && mouseY <= buttonY + buttonSide) {  
    //if mouse X is in left button
    if (mouseX >= buttonLX && mouseX <= buttonLX + buttonSide) {      
      fill(203, 97, 97);                                              //change colour to red
      rect(buttonLX, buttonY, buttonSide, buttonSide, 20);            //over draw the button (rect)
      if (click == true) {        //if mouse pressed;
        button = 1;               //button is 1 (used to connect collision detection with the button click)
      } else {button = 0;}        //when it is released, the click is false which means the button is 0
    }
    
    //centre button
    if (mouseX >= buttonCX && mouseX <= buttonCX + buttonSide) {     
      fill(153, 191, 112);                                            //green
      rect(buttonCX, buttonY, buttonSide, buttonSide, 20);
      if (click == true) {        //if mouse pressed;
        button = 2;               //2
      } else {button = 0;}        //false -> 0
    }
    
    //right button
    if (mouseX >= buttonRX && mouseX <= buttonRX + buttonSide) {     
      fill(120, 150, 188);                                               //blue
      rect(buttonRX, buttonY, buttonSide, buttonSide, 20);
      if (click == true) {       //if mouse pressed;
        button = 3;              //3
      } else {button = 0;}       //false -> 0
    }
  }
}

//draws the yellow 'zone' at the botton
void drawZone() {
  fill(250, 219, 63, 191);    //yellow colour opacity 75%
  rect(baseX, baseHeight*0.9, baseWidth, baseHeight/20);
}
