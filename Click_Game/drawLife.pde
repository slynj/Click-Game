int life = 15;    //original life
PImage photo;     //image

void drawLife() {
  float hartX = width;
  
  //draw "life" number of hart images
  for (int i = 0; i < life; i++) {
    tint(0);    //changes the hart to black(the image was originally red & white)  
    image(photo, hartX, 0, width/32, width/32);    //draw the image
    hartX -= width/32;        //move the image to the left
  }
}
