class Bullet extends GameObject {
 
  //1. Instance variables (found in GameObject)
  int timer;
  
  //2. Constructors 
  /* Bullet() {
    timer = 60; 
    location = new PVector(myShip.location.x,myShip.location.y);
    velocity = new PVector(myShip.direction.x,myShip.direction.y);
    size = 10;
    lives = 1;
    velocity.setMag(8);
    EnemyBullet = false; 
  }
  
  */
  
  Bullet(color c, float x, float y) {
    if (c == purple){
       timer = 60; 
    location = new PVector(myShip.location.x,myShip.location.y);
    velocity = new PVector(myShip.direction.x,myShip.direction.y);
    velocity.setMag(8);
    size = 10;
    lives = 1;
    EnemyBullet = false; 
    }
    if (c == red){
   location = new PVector(x, y);
   velocity = new PVector(myShip.location.x - location.x, myShip.location.y - location.y);
   velocity.setMag(6);
   EnemyBullet = true;
   size = 10;
   lives = 1;
    }
  }
 
  
  //3. Behaviour functions
  /* void show(){
     pushMatrix();
     fill(myColor);
     stroke(225);
     strokeWeight(2);
     rect(location.x,location.y,size,size);
     popMatrix();
   }
   */
   void act(){
     super.act();
     
     timer--;
     if(timer == 0) {
      lives = 0; 
     }
     
     if(location.x < -size || location.x > width || location.y < -size || location.y > height) {
      
      lives = 0;
     }
     
    // println(location.x,location.y,"bullet");
   }
  
  
  
}
