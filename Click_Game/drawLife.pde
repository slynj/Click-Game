int life = 15;    //original life that changes in the miss() function
PImage photo;     //image

void drawLife() {
  float hartX = width;
  int playerLife = life;  //created to have changed life value in the for loop
  
  //draw "life" number of hart images
  for (int i = 0; i < playerLife; i++) {
    //println(playerLife);
    playerLife = life;   //updated value of playerLife
    tint(0);    //changes the hart to black(the image was originally red & white)  
    image(photo, hartX, 0, width/32, width/32);    //draw the image
    hartX -= width/32;        //move the image to the left
  }
}
