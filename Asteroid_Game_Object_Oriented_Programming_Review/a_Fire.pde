class Fire extends GameObject{
  
  int alpha; //transparency 
  
  Fire(){
    //location = new PVector(myShip.location.x,myShip.location.y);
   location = myShip.location.copy();    //same line of code as above, but shorter and literally just copies the myShip x and y cord.
    //velocity = new PVector(myShip.direction.x,myShip.direction.y);
    velocity = myShip.direction.copy();
    velocity.rotate(radians(180)+ random(-0.5,0.5)); //converts radians to degrees, rotates the direction of ship the whole way around so the fire starts at the end of spaceship 
    velocity.setMag(25);
    size = 10;
    lives = 1;
    alpha = 255; 
  }
  
  void show(){
    pushMatrix();
   fill(pink,alpha);          //2nd number gives transparency value 
     stroke(225,alpha);
     strokeWeight(2);
     rect(location.x,location.y,size,size); 
     alpha = alpha - 10;
     if(alpha >= 0) lives = 0;    //for some reason, if (alpha == 0 )lives = 0 doesn't work and asteroids are "deleted after 1 shot" 
     popMatrix();
  }
  
  void act(){
    super.act();

  }
  
}
