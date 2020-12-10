void pause(){
  
  fill(0);
  textSize(50);
  text("Game is Paused", 210,400);
  
 
  
  //accessories 
  pushMatrix();
  rectMode(CENTER);
 fill(255,2); // changes color slowly omg brooooo
 rect(400,400,400,500);
  popMatrix();
  
  pushMatrix();
  button(400,600,200,100, "RESUME");
  textSize(28);
  button(720,50,100,50, " ");
  text("QUIT" ,685,62);
  popMatrix();
}

void pauseClicks(){
 
   if(buttonPressed(400,600,200,100)){
     mode = GAME;
   }

if(buttonPressed(720,50,100,50)){
     mode = GAMEOVER;
   }

}
