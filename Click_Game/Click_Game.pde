/*
 Name:        click click click!!! RHYTHM GAME
 Purpose:     click click click!!! RHYTHM GAME is a click rhythm game where you can challenge yourself how fast your eyes and hands can move!
 
 Author:      LYN JEONG
 Created:     02-Jun-2021
 Updated:     05-Jun-2021
 
 Don't forget to use the reference when programming
 https://processing.org/reference/
 ---------------------------------------------
 I think this project deserves a 4+ because ...
 it fulfills all the level 3 requirements:
 - collision detection
   - 5 buttons are drawn with collision detection feature to change its colour when hovered over, and do certain things when clicked on 
   - falling rect and the yellow "ZONE"
 - time
   - every 10 seconds, the falling speed is increased
   - time is counted in sec (how long player played the game for)
 - documentation in code
   - descriptive comments on every code with proper variable name and header
 and also the level 4 requirements:
 - game states
   - 4 distinctive game state (main, game, help, end)
 - organized funcitons
   - properly used funcitons to avoid repeating codes and to have organized codes
 - data structures
   - various data structures are used
     - arrays are used
     - arrayList is also used
 - loops and conditional statements
   - approperiatley and efffectively used to avoid repetitives
 - git commits
   - 40+ commits
 - documentation
   - tabs are used to organize codes

 moreover, it has feautres like:
 
 Features Added:
   1. random rect falling
      Falling rectangle is drawn every 3 seconds. They can appear on the 1st, 2nd, or 3rd column with random duration seconds. It is also deleted when it goes over a certain point.
   2. life
      intuitive graphic rather than showing the number
   3. timer
      counts in seconds how long it took for the player to die
   4. help
      visualized using images to help players understand better
   5. end screen
      end screen with various values players might want to view again (score, time)
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
