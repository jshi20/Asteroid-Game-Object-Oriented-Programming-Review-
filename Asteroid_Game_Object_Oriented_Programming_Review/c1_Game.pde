int time;
void game(){
  frameRate(60);
  rectMode(CENTER);
   background(0);
   

    time++;
    if (time == 600 ) {
      myObjects.add(new Enemy());
      time = 0;
    }
 //  println(time);
   
   fill(255);
   rect(135,70,200,70);
   fill(0,0,255);
   textSize(40);
   text("Lives: " + myShip.lives, 55,85);
   
    fill(255);
   rect(135,180,200,70);
   fill(0,0,255);
   textSize(40);
   text("Score: " + score, 55,190);
   
   myShip.show();
   myShip.act();
   

  int i = 0;  //starting at object zero                                                                                                              //start with bullet  because when you startthe game you have 0 bullets; also, int i gets set back to 0 everytime it loops, so infinite bullets
  while (i < myObjects.size() ){ 
    //do something with the current bullet
    GameObject obj = myObjects.get(i);
    
    if (obj.lives > 0){
    obj.act();
    obj.show();
    
    if(obj.lives == 0){
      myObjects.remove(i);
    } else {
     i++; 
    }
    
   // i++; // go to the next bullet 
    } else {
     myObjects.remove(i);
     //print("goodbye ");
    }
    
   // println(time);
    
   
    
    if(score == ast * 7) mode = GAMEWIN; //each asteroid equals 7 points 
 
  }
  
  //button(400,600,200,100, "GOBYEBYE");
}

void gameClicks(){
//  if (buttonPressed(400,600,200,100)) { //quit
  //  mode = GAMEOVER;
 // }
 if (buttonPressed(200,400,200,100)) {
   mode = PAUSE;
 }
 
 
 
}
