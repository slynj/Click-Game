//variable declaration
float baseX;            //x of the base rect (used as a "base" coordiante for other variables in order to maintain size proportion)
float baseY;            //y of the base rect  (^)
float baseWidth;        //width of the base rect  (^)
float baseHeight;       //height of the base rect  (^)

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
