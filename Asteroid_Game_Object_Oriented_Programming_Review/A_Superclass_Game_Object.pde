class GameObject{
  
 PVector location;
 PVector velocity;
 float size; 
 int lives;  
 color myColor;
 boolean EnemyBullet;
 
 GameObject(color c){
  myColor = c;  
 }
 
 GameObject(){
     
   
 }
 
 void act(){
   location.add(velocity);
 }
 
 void show(){
  //  pushMatrix();
     fill(myColor);
     stroke(225);
     strokeWeight(2);
     rect(location.x,location.y,size,size);
    // popMatrix();
 }
 
  void offScreen() {
    if (location.x < 0 || location.x > width || location.y <0 || location.y > height){
      lives = 0;
  }
}
 
}

/* boolean touching(GameObject obj) {
     if (dist(obj.location.x, obj.location.y, myShip.location.x, myShip.location.y) < obj.size/2 ) {
       return true;
     } else return false;
  }
  
  */
  
  /*
  boolean touchingAsteroid() {
    int i = 0;
    while (i < myObjects.size()) {
      GameObject obj = myObjects.get(i);
      if (obj instanceof Asteroid && touching(obj)) {
       return true; 
      }
      i++;
    }
    return false;
  }
  
  */  //need a touching boolean to tell if something is touching one another 
 
  
  
  
