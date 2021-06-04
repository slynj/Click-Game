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


void setup() {
  size(1000, 700);
  background(100);
}


void draw() {
  drawBackground();
}

void drawBackground() {
  //variable declaration
  float baseX = width/8;
  float baseY = 0;
  float baseWidth = width/2 - width/8;
  float baseHeight = height*0.75;
  float lineGap = baseWidth/3;
  
  //draws the base rectangle
  fill(50);
  stroke(0);
  rect(baseX, baseY, baseWidth, baseHeight);
  stroke(255);
  for (float lineX = baseX + lineGap; lineX < width/2; lineX += lineGap) {
    line(lineX, 0, lineX, baseHeight);
  }
  
  //draws 3 buttons on the bottom
  fill(255);
  noStroke();
  for (float buttonX = baseX; buttonX < width/2; buttonX += lineGap +2) {
    rect(buttonX, baseHeight+10, lineGap-4, lineGap-4, 20);
  }
  
  //draws the yellow 'zone'
  fill(250, 219, 63, 191);
  rect(baseX, baseHeight*0.9, baseWidth, baseHeight/20); 
}
