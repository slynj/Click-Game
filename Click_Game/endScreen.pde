void endScreen() {
  background(70);

  textAlign(CENTER);
  fill(255);
  textSize(80);
  text("GAME ENDED!", width/2, height/5);
  
  fill(250, 219, 63, 191);
  textSize(30);
  text("your score", width/2, height*0.35);
  
  textSize(250);
  text(score, width/2, height*0.66);
  
  fill(229, 159, 44, 191);
  textSize(50);
  text("you lasted for [ " + timer + " ] seconds!", width/2, height*0.9);
  
}
