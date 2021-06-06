/*
 Name:        click click click!!! RHYTHM GAME
 Purpose:     click click click!!! RHYTHM GAME is a click rhythm game where you can challenge yourself how fast your eyes and hands can move!
 
 Author:      LYN JEONG
 Created:     02-Jun-2021
 Updated:     05-Jun-2021
 
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
PImage hart;     //image
PImage help;     //image

void setup() {
  //initial setup
  size(1000, 700);
  

  //variable assign
  baseX = (float) width/8;           //x coordinate is always 1/8 of the width
  baseY = 0;                         //y is always0 zero since the rectangle is touching the top
  baseWidth = width/2 - width/8;     //width of the base rect is half of width minus width/8 (gap on the left)
  baseHeight = height*0.75;          //height of the base rect is always 75% of the height 
  lineGap = baseWidth/3;             //gap between the lines that divides the base in 3 parts
  gameState = "main";                //initial game state
  hart = loadImage("hart.png");     //life img
  help = loadImage("help.jpg");     //help img
}


void draw() {
  //game states
  if (gameState == "main") {
    mainScreen();
  } else if (gameState == "game") {
    gameScreen();
  } else if (gameState == "help") {
    helpScreen();
  } else if (gameState == "end") {
    endScreen();
  } else {}
}

void mousePressed() {
  click = true;
}

void mouseReleased() {
  click = false;
}
