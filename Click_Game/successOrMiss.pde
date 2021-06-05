boolean success;    //boolean determend in falling rect (if it is clicked on the right timing)
boolean miss;       // ^^
int count = 0;      //counts the frame rate (resetted every time the rect is successed or missed)

//draws the rectangle with the same colour of the background to overwrite the text
void drawRect() {
  fill(100);
  noStroke();
  rect(width/2, height/3, width/2, height);
}

//if the player sucessfully click the button,
void success() {
  miss = false;      //miss is false
  success = true;    //success is true
  count = 0;         //framerate count is resetted
  score += 10;       //increases the score by 10
}

//same as above but when it is missed
void miss() {
  success = false;
  miss = true;
  count = 0;
  life -= 1;    //decrease the life by 1 (drawLife now draws 1 less harts)
}

void successOrMiss() {
  textSize(100);
  count++;    //this increases the count by 1 (because the funciton is in the draw loop, it is equal to the frame rate)
  
  //if the player suceeds,
  if (success == true && count < 60) {
    //for 1 seconds, draw text (after 1 sec it is gone because of the drawRect())
    fill(140, 188, 120);
    text("SUCCESS", width*0.55, height/2);
  }
  //if the player misses,
  if (miss == true && count < 60) {
    //for 1 seconds, draw text  (after 1 sec it is gone because of the drawRect())
    fill(211, 94, 90);
    text("MISS", width*0.65, height/2);
  }
}
