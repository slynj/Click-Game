int life = 20;

void drawLife() {
  float rectX = width*0.55;
  for (float i = 0; i < life; i++) {
    fill(#F5C84D, 191);
    stroke(255);
    rect (rectX, height/6, width/32, height/32);
    rectX += width*0.55;
  }
}
