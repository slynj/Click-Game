//variable declaration
float firstCol_X;       //
float secondCol_X;
float thirdCol_X;

ArrayList<Float> firstCol_Y = new ArrayList<Float>();
ArrayList<Float> secondCol_Y = new ArrayList<Float>();
ArrayList<Float> thirdCol_Y = new ArrayList<Float>();

float rectY = 0;
int loop = 0;
int[] sec = {30, 60, 90};
int index = 0;
int speed = 1;


void fallingRect() {
  loop++;
  
  firstCol_X = baseX;
  secondCol_X = firstCol_X + lineGap;
  thirdCol_X = secondCol_X + lineGap;
  
  for (int i = 0; i < firstCol_Y.size(); i ++) {
    rect(firstCol_X, firstCol_Y.get(i), lineGap, baseHeight/30);
    firstCol_Y.set(i, firstCol_Y.get(i) + speed);
    
    if (firstCol_Y.get(i) > baseHeight*0.9 + baseHeight/20) {
       firstCol_Y.remove(i);
    }
  }
  
    for (int i = 0; i < secondCol_Y.size(); i ++) {
    rect(secondCol_X, secondCol_Y.get(i), lineGap, baseHeight/30);
    secondCol_Y.set(i, secondCol_Y.get(i) + speed);
    
    if (secondCol_Y.get(i) > baseHeight*0.9 + baseHeight/20) {
       secondCol_Y.remove(i);
    }
  }
  
  for (int i = 0; i < thirdCol_Y.size(); i ++) {
    rect(thirdCol_X, thirdCol_Y.get(i), lineGap, baseHeight/30);
    thirdCol_Y.set(i, thirdCol_Y.get(i) + speed);
    
    if (thirdCol_Y.get(i) > baseHeight*0.9 + baseHeight/20) {
       thirdCol_Y.remove(i);
    }
  }
  
  
  int column = 0;
  if (loop % sec[index] == 0) {
    column = int(random(3));
    switch (column) {
      case 0:
        firstCol_Y.add(rectY);
        break;
      case 1:
        secondCol_Y.add(rectY);
        break;
      case 2:
        thirdCol_Y.add(rectY);
        break;
       default:
    }
    
    index = int(random(sec.length));
  }
}


void speedControl() {
  if (loop % 600 == 0) {
    speed++;
  }
}
