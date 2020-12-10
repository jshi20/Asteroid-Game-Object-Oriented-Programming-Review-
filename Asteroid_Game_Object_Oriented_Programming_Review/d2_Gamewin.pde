void gamewin(){
  background(200,0,0);
  image(bicep,random(width),random(height));
  image(bicep,random(width),random(height));
  image(bicep,random(width),random(height));
  image(bicep,random(width),random(height));
  image(bicep,random(width),random(height));
  image(bicep,random(width),random(height));
  image(bicep,random(width),random(height));
  image(bicep,random(width),random(height));
  image(bicep,random(width),random(height));
  image(bicep,random(width),random(height));
  
  textSize(40);
button(400,600,200,100, "INTRO");
button(200,400,200,100, "EXIT");
text("YOU WIN! CONGRATIUALTIONS" ,100,200);

}

void gamewinClicks(){
 if(buttonPressed(400,600,200,100)){
 
  setup();
  mode = INTRO;
 }
 if (buttonPressed(200,400,200,100)){
  exit(); 
 }
}
