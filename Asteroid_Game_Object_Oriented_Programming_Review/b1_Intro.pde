void intro(){
  background(0,200,0);
  
  image(triumph,random(width),random(height));
  image(triumph,random(width),random(height));
  image(triumph,random(width),random(height));
  image(triumph,random(width),random(height));
  image(triumph,random(width),random(height));
  image(triumph,random(width),random(height));
  image(triumph,random(width),random(height));
  image(triumph,random(width),random(height));
  image(triumph,random(width),random(height));
  image(triumph,random(width),random(height));
  
  textSize(40);
  text("EPIC ASTEROID GAME",175,350);
 
   text("Press P to Pause", 175, 475);
 
  
  fill(255);
  rect(400,600,200,100);
  
   fill(0);
  text("START",360,610);
  
  //drawing the button
 button(400,600,200,100, "START");
  button(650,600,200,100, "QUIT");
  //button(100,100,200,100, "HI");
  //button(200,100,100,100, "YES");
}

void introClicks(){
   if(buttonPressed(400,600,200,100)){
     mode = GAME;
   }
   if(buttonPressed(650,600,200,100)){
    exit(); 
   }
}
