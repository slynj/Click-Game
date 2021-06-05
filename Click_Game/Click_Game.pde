/*
 Name:        Program Name
 Purpose:     Program Description
 
 Author:      Your Name
 Created:     XX-Dec-2020
 Updated:     XX-Dec-2020
 
 Don't forget to use the reference when programming
 https://processing.org/reference/
 ---------------------------------------------
 I think this project deserves a XXXXXX because ...
 
 Features Added:
 ...
 ...
 ...
 
 --------------------------------------------- 
 //*/

String gameState;       //game state (game, main, help, end)
boolean click = false;

void setup() {
  //initial setup
  size(1000, 700);
  background(100);

  //variable assign
  baseX = (float) width/8;           //x coordinate is always 1/8 of the width
  baseY = 0;                         //y is always0 zero since the rectangle is touching the top
  baseWidth = width/2 - width/8;     //width of the base rect is half of width minus width/8 (gap on the left)
  baseHeight = height*0.75;          //height of the base rect is always 75% of the height 
  lineGap = baseWidth/3;             //gap between the lines that divides the base in 3 parts
  gameState = "run";                 //initial game state
  photo = loadImage("hart.png");
}


void draw() {
  if (gameState == "run") {
    drawRect();
    drawBase();
    drawButton();
    drawZone();
    drawLife();
    speedControl();
    fallingRect();
    successOrMiss();
    //speedTimer();
  }
}

void mousePressed() {
  click = true;
}

void mouseReleased() {
  click = false;
}
