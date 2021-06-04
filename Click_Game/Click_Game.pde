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
  drawBase();
  //drawButton();
  //drawZone();
}



void drawBase() {
  //variable declaration
float baseX = width/8;                  //x coordinate is always 1/8 of the width
float baseY = 0;                        //y is always0 zero since the rectangle is touching the top
float baseWidth = width/2 - width/8;    //width of the base rect is half of width minus width/8 (gap on the left)
float baseHeight = height*0.75;         //height of the base rect is always 75% of the height 
float lineGap = baseWidth/3;            //gap between the lines that divides the base in 3 parts

  //draws the base rectangle
  fill(50);
  stroke(0);
  rect(baseX, baseY, baseWidth, baseHeight);
  stroke(255);
  for (float lineX = baseX + lineGap; lineX < width/2; lineX += lineGap) {
    line(lineX, 0, lineX, baseHeight);
  }
  println(width);
  println(height);

  println(baseX);
  println(baseY);
  println(baseWidth);
  println(baseHeight);
  println(lineGap);

}


//void drawButton() {
//  //draws 3 buttons on the bottom
//  fill(255);
//  noStroke();
//  for (float buttonX = baseX; buttonX < width/2; buttonX += lineGap +2) {
//    rect(buttonX, baseHeight+10, lineGap-4, lineGap-4, 20);
//  }
//}

////draws the yellow 'zone' at the botton
//void drawZone() {
//  fill(250, 219, 63, 191);    //yellow colour opacity 75%
//  rect(baseX, baseHeight*0.9, baseWidth, baseHeight/20);
//}
