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
float firstCol_X;
float secondCol_X;
float thirdCol_X;
ArrayList<Float> firstCol_Y = new ArrayList<Float>();
ArrayList<Float> secondCol_Y = new ArrayList<Float>();
ArrayList<Float> thirdCol_Y = new ArrayList<Float>();
float rectY = 0;

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
  
  firstCol_Y.add(rectY);
  secondCol_Y.add(rectY - 50);
  thirdCol_Y.add(rectY - 30);

    //rectY += random(500);
    
  //}
  //firstCol_Y.add(100f);
  //firstCol_Y.add(200f);
  //firstCol_Y.add(300f);
  
  //secondCol_Y.add(120f);
  //secondCol_Y.add(220f);
  //secondCol_Y.add(320f);
  
  //thirdCol_Y.add(120f);
  //thirdCol_Y.add(220f);
  //thirdCol_Y.add(320f);
  
  //secondCol_Y.remove(0);
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
int[] sec = {120, 180, 240, 300, 360, 420};
int index = 0;

  //float[] cordX = {130, 230, 330};
  //float[] cordY = {0, 0, 0};
  
  
  
  
   
  //boolean[] onX = {false, false, false};
  
void fallingRect() {
  loop++;
  
  firstCol_X = baseX;
  secondCol_X = firstCol_X + lineGap;
  thirdCol_X = secondCol_X + lineGap;
  
  for (int i = 0; i < firstCol_Y.size(); i ++) {
    rect(firstCol_X, firstCol_Y.get(i), lineGap, baseHeight/30);
    firstCol_Y.set(i, firstCol_Y.get(i) + 1);
    
    if (firstCol_Y.get(i) > baseHeight*0.9 + baseHeight/20) {
       firstCol_Y.remove(i);
    }
  }
  
    for (int i = 0; i < secondCol_Y.size(); i ++) {
    rect(secondCol_X, secondCol_Y.get(i), lineGap, baseHeight/30);
    secondCol_Y.set(i, secondCol_Y.get(i) + 1);
    
    if (secondCol_Y.get(i) > baseHeight*0.9 + baseHeight/20) {
       secondCol_Y.remove(i);
    }
  }
  
  for (int i = 0; i < thirdCol_Y.size(); i ++) {
    rect(thirdCol_X, thirdCol_Y.get(i), lineGap, baseHeight/30);
    thirdCol_Y.set(i, thirdCol_Y.get(i) + 1);
    
    if (thirdCol_Y.get(i) > baseHeight*0.9 + baseHeight/20) {
       thirdCol_Y.remove(i);
    }
  }
  
  firstColRan();
  secondColRan();
  thirdColRan();
    
  
  
}

void firstColRan() {
    index
    if (loop % sec[index] == 0) {
    firstCol_Y.add(rectY);
    index = int(random(sec.length));    
  }
}

void secondColRan() {

if (loop % sec[index] == 0) {
    secondCol_Y.add(rectY);
    index = int(random(sec.length));    
  }
}
void thirdColRan() {

  if (loop % sec[index] == 0) {
    thirdCol_Y.add(rectY);
    index = int(random(sec.length));    
  }

}
