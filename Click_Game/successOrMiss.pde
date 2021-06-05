boolean success;
boolean miss;
int count = 0;

void drawRect() {
  fill(100);
  noStroke();
  rect(width/2, height/3, width/2, height/3);
}

void success() {
  miss = false;
  success = true;
  count = 0;
}

void miss() {
  success = false;
  miss = true;
  count = 0;
}

void successOrMiss() {
  textSize(100);
  count++;

  if (success == true && count < 60) {
    //miss = false;
    fill(140, 188, 120);
    text("SUCCESS", width*0.6, height/2);
  }
  if (miss == true && count < 60) {
    //success = false;
    fill(211, 94, 90);
    text("MISS", width*0.6, height/2);
  }
}
