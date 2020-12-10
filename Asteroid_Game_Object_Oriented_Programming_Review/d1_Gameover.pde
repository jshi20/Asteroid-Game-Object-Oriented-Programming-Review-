void gameover(){
  background(255);
  image(joy,random(width),random(height));
  image(joy,random(width),random(height));
  image(joy,random(width),random(height));
  image(joy,random(width),random(height));
  image(joy,random(width),random(height));
  image(joy,random(width),random(height));
  image(joy,random(width),random(height));
  image(joy,random(width),random(height));
  image(joy,random(width),random(height));
  
  textSize(40);
button(400,600,200,100, "INTRO");
button(200,400,200,100, "EXIT");
text("YOU LOST! RETRY MAYBE?!?!!" ,100,200);
}

void gameoverClicks(){
 if(buttonPressed(400,600,200,100)){
   setup();
  mode = INTRO; 
  
 }
 if (buttonPressed(200,400,200,100)){
  exit(); 
 }
 
 
}
