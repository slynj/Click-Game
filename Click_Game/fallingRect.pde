//variable declaration
float firstCol_X;       //x of the rect in 1st column
float secondCol_X;      //^ 2nd column
float thirdCol_X;       //^ 3rd column

ArrayList<Float> firstCol_Y = new ArrayList<Float>();    //
ArrayList<Float> secondCol_Y = new ArrayList<Float>();   //
ArrayList<Float> thirdCol_Y = new ArrayList<Float>();    //

int loop = 0;              //loop variable that increases by 1 every time the draw loop is runned
int[] sec = {30, 60, 90};  //seconds array to have random seconds apart each rectangle
int index = 0;             //index variable to index the sec array
int column = 0;            //colum variable to have random colums to generate the rectangles
int speed = 1;             //speed of the rectangle falling (starts at 1)

//rectangle falling randomly 
void fallingRect() {
  loop++;   // loop increases by 1 every draw loop

  //variable assigning
  firstCol_X = baseX;
  secondCol_X = firstCol_X + lineGap;
  thirdCol_X = secondCol_X + lineGap;

  //for loop that draws the rectangle and moves it down by "speed" for the 1st column
  for (int i = 0; i < firstCol_Y.size(); i ++) {    //repeats it by the size of the firstCol_Y
    rect(firstCol_X, firstCol_Y.get(i), lineGap, baseHeight/30);  //draws the rectangle of first column's element
    firstCol_Y.set(i, firstCol_Y.get(i) + speed);  //y of the rect is now original y + speed (related function is written at the bottom)
  }

  //if there is a rectangle in the column
  if (firstCol_Y.size() > 0) {

    //if the y of the rect is bigger than the yellow zone, delete the rectangle and print miss
    if (firstCol_Y.get(0) > baseHeight*0.9 + baseHeight/20) {    
      firstCol_Y.remove(0);
      println("1st: miss");
    }
  }

  //if there is a rectangle in the column (written again to prevent this part of the code running after the firstCol_Y is deleted)
  if (firstCol_Y.size() > 0) {

    //if the y of the rectangle is bigger that the y of the yellow zone and smaller than y + height of the yellow zone (1 is added to increase the part being detected)
    if (firstCol_Y.get(0) >= baseHeight*0.9 - 1 && firstCol_Y.get(0) <= baseHeight*0.9 + baseHeight/20 + 1) {  

      //if button is 1 (= if mouse is clicked inside the LEFT button)
      if (button == 1) {
        println("1st: success");      //show "SUCCESS"
        firstCol_Y.remove(0);    //delete the rectangle
      }
    }
  }

  //for loop that draws the rectangle and moves it down by "speed" for the 2nd column
  for (int i = 0; i < secondCol_Y.size(); i ++) {
    rect(secondCol_X, secondCol_Y.get(i), lineGap, baseHeight/30);
    secondCol_Y.set(i, secondCol_Y.get(i) + speed);
  }

  //if there is a rectangle in the column
  if (secondCol_Y.size() > 0) {

    //if the y of the rect is bigger than the yellow zone, delete the rectangle and print miss
    if (secondCol_Y.get(0) > baseHeight*0.9 + baseHeight/20) {    
      secondCol_Y.remove(0);
      println("2nd: miss");
    }
  }

  //if there is a rectangle in the column (written again to prevent this part of the code running after the firstCol_Y is deleted)
  if (secondCol_Y.size() > 0) {

    //if the y of the rectangle is bigger that the y of the yellow zone and smaller than y + height of the yellow zone (1 is added to increase the part being detected)
    if (secondCol_Y.get(0) >= baseHeight*0.9 - 1 && secondCol_Y.get(0) <= baseHeight*0.9 + baseHeight/20 + 1) {  

      //if button is 2 (= if mouse is clicked inside the CENTRE button)
      if (button == 2) {
        println("2nd: success");      //show "SUCCESS"
        secondCol_Y.remove(0);    //delete the rectangle
      }
    }
  }

  //for loop that draws the rectangle and moves it down by "speed" for the 3rd column
  for (int i = 0; i < thirdCol_Y.size(); i ++) {
    rect(thirdCol_X, thirdCol_Y.get(i), lineGap, baseHeight/30);
    thirdCol_Y.set(i, thirdCol_Y.get(i) + speed);
  }
  
  //if there is a rectangle in the column
  if (thirdCol_Y.size() > 0) {

    //if the y of the rect is bigger than the yellow zone, delete the rectangle and print miss
    if (thirdCol_Y.get(0) > baseHeight*0.9 + baseHeight/20) {    
      thirdCol_Y.remove(0);
      println("3rd: miss");
    }
  }

  //if there is a rectangle in the column (written again to prevent this part of the code running after the firstCol_Y is deleted)
  if (thirdCol_Y.size() > 0) {

    //if the y of the rectangle is bigger that the y of the yellow zone and smaller than y + height of the yellow zone (1 is added to increase the part being detected)
    if (thirdCol_Y.get(0) >= baseHeight*0.9 - 1 && thirdCol_Y.get(0) <= baseHeight*0.9 + baseHeight/20 + 1) {  

      //if button is 3 (= if mouse is clicked inside the RIGHT button)
      if (button == 3) {
        println("3rd: success");      //show "SUCCESS"
        thirdCol_Y.remove(0);    //delete the rectangle
      }
    }
  }

  //generates random column and second for the rectangle to appear and fall
  if (loop % sec[index] == 0) {      //if the #in the loop variable is divisable by sec[index](30 for the first loop because index is 0);
    column = int(random(3));         //choses random num 0-2
    switch (column) {
    case 0:                          //if column is 0;
      firstCol_Y.add(0f);            //add rectangle to the first column
      break;                         //break (no case 1/2)
    case 1:                          //if column is 1;
      secondCol_Y.add(0f);           //add rectangle to the second column
      break;                         //break (no case 2)
    case 2:                          //if column is 2;
      thirdCol_Y.add(0f);            //add rectangle to the thrid column
      break;
    }

    index = int(random(sec.length)); //chose a random second from the sec array (this value is used in if (loop % sec[index] == 0) at the top for the next loop)
  }
}

//increses speed
void speedControl() {
  if (loop % 600 == 0) {      //when loop is divisable by 600 (=every 10 seconds)
    speed++;                  //increase speed by 1
  }
}
