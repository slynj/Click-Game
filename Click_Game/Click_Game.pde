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

//variable declaration
float baseX;
float baseY;
float baseWidth;
float baseHeight;
float lineGap;
String gameState;

void setup() {
  size(1000, 700);
  background(100);
  //variable assign
  baseX = (float) width/8;                  //x coordinate is always 1/8 of the width
  baseY = 0;                        //y is always0 zero since the rectangle is touching the top
  baseWidth = width/2 - width/8;    //width of the base rect is half of width minus width/8 (gap on the left)
  baseHeight = height*0.75;         //height of the base rect is always 75% of the height 
  lineGap = baseWidth/3;            //gap between the lines that divides the base in 3 parts
  gameState = "run";
  
  firstCol_Y.add(100f);
  firstCol_Y.add(200f);
}


void draw() {
  if (gameState == "run") {
    drawBase();
    drawButton();
    drawZone();
    fallingRect();
  }
}

//draws the base rectangle
void drawBase() {
  fill(50);
  stroke(0);
  rect(baseX, baseY, baseWidth, baseHeight);
  stroke(255);
  for (float lineX = baseX + lineGap; lineX < width/2; lineX += lineGap) {
    line(lineX, 0, lineX, baseHeight);
  }
}

//draws 3 buttons on the bottom
void drawButton() {
  //variable declaration
  float buttonSide = lineGap - 4;            //the button side length  is equal to line gap - 4 to give space inbetween the buttons
  float buttonLX = baseX;                   //x coordinate of the button is equal to the x of base rect
  float buttonCX = buttonLX + buttonSide + 6;
  float buttonRX = buttonCX + buttonSide + 6;
  float buttonY = baseHeight + width/100;  //y coordinate of the button is base height + 10 (=width/100) 

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
    }
    if (mouseX >= buttonCX && mouseX <= buttonCX + buttonSide) {     //centre button
      fill(0, 255, 0);                                               //green
      rect(buttonCX, buttonY, buttonSide, buttonSide, 20);
    }
    if (mouseX >= buttonRX && mouseX <= buttonRX + buttonSide) {     //right button
      fill(0, 0, 255);                                               //blue
      rect(buttonRX, buttonY, buttonSide, buttonSide, 20);
    }
  }


  //draws 3 buttons untill the x of button is bigger than half of width (becuase the base rect width is width/2)
  //for (; buttonX < width/2; buttonX += lineGap +2) {          //adds 2 to linegap each time to centre the buttons that are 4 apart
  //  rect(buttonX, buttonY, buttonSide, buttonSide, 20);
  //}
}

//draws the yellow 'zone' at the botton
void drawZone() {
  fill(250, 219, 63, 191);    //yellow colour opacity 75%
  rect(baseX, baseHeight*0.9, baseWidth, baseHeight/20);
}


int loop = 0;
  float[] cordX = {130, 230, 330};
  float[] cordY = {0, 0, 0};
  
  float firstCol_X = 130f;
  
  ArrayList<Float> firstCol_Y = new ArrayList<Float>();
   
  boolean[] onX = {false, false, false};
  
void fallingRect() {
    rect(firstCol_X, firstCol_Y.get(0), baseWidth/30, baseHeight/50);
  
   //  for (int i = 0; i < cordX.length; i++) {
   //    if (onX[i] == true) {
   //      rect(cordX[i], cordY[i], baseWidth/30, baseHeight/50);
   //      cordY[i]++;
         
   //      ArrayList<Integer> ar = new ArrayList<Integer>();
   //      ar.add(10);
        
   //      if (cordY[i] >= 500) {
   //         cordY[i] = 0;
   //         onX[i] = false;
   //      } 
   //    } else {
   //      if (++loop % 180 == 0) {
   //       int index = int(random(cordX.length));
   //       if (onX[index] == true) {
   //         continue;
   //       }
   //       cordY[index] = 0;
   //       rect(cordX[index], cordY[index], baseWidth/30, baseHeight/50);
   //       onX[index] = true;
   //       cordY[index]++;
          
   //       if (cordY[index] >= 500) {
   //           cordY[index] = 0;
   //        }
   //        loop = 0;
   //      }
   //    }   
       
   //    //delay(100);
   // }
    
   
   ////for (int i = 0; i < cordX.length; i++) {
   ////   rect(cordX[i], cordY[i], baseWidth/30, baseHeight/50);
   ////   cordY[i]++;
      
   ////   if (cordY[i] >= 500) {
   ////     cordY[i] = 0;
   ////   }
   ////}
  
}
