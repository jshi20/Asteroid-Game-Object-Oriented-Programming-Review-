class Spaceship extends GameObject { //by convention, classes are capitalized 

  //1. Instance Variables
    PVector direction;
    int shotTimer, threshold; 
    int invisTimer, invisTimerCooldown;
    int sec;
    int col; 
  //PVector location; //2 coordinates under the same name (x,y)
  //PVector velocity;
 // PVector direction;
  //int lives; 
  
  
  //2. Constructors (name matches class) 
  Spaceship(){
    
    location = new PVector(width/2, height/2);
  //  x = width/2;
  //  y = height/2;
    
    velocity = new PVector(0,0); //megnitude, amount it is moving by Pvector(rise,run)
     direction = new PVector(0.1,0); //for like tank games, no need for direction and wkey can just be location.add(velocity);
   // vx = 0;
   // vy = 0;
    lives = 3;
    
    shotTimer = 0;
    threshold = 30;
    
    sec = 5;
    invisTimer = 0;
    invisTimerCooldown = 60 * sec;   //60 multipled by x where x is the amount of seconds you want 
    
    col = 0; 
  }
  
  
  //3. Behavior Functions (almost always act and show)
 void show(){
   pushMatrix();
   stroke(255);
   fill(col);
   strokeWeight(2);
   translate(location.x,location.y);
   rotate(direction.heading());
   triangle(-20,-20,-20,20,40,0);                 //need to rotate at the origin
   popMatrix();
 }
 
 void act(){
   super.act();   //needs to be the first thing done when partially overiding 
  if (akey) direction.rotate(-radians(5));
  if (dkey) direction.rotate(radians(5));  //inverted, negative is counter-clockwise 
  if (wkey) {
    velocity.add(direction);
    myObjects.add( new Fire());
     myObjects.add( new Fire());
      myObjects.add( new Fire());
       myObjects.add( new Fire());
  }
  if (skey) velocity.sub(direction);
  if (spacekey && shotTimer >= threshold) { 
    myObjects.add(new Bullet(purple, location.x, location.y));            //default is 60 frames per second, so 1 bullet per second if threshold is 60
    shotTimer = 0;
    //lives--;
  }
 // location.add(velocity); //location changes by the PVector (found in the superclass)
  
  if(location.x > width+50) location.x = -50;
  if(location.x < -50) location.x = width+50;
  if(location.y > height+50) location.y = -50;
  if(location.y < -50) location.y = height+50;
  
  shotTimer++;                
  
  if(velocity.mag() > 5) velocity.setMag(5); //limiting the speed
  
  if (lives == 0) mode = GAMEOVER;
  
  int i = 0;
    while (i < myObjects.size()) {
      GameObject obj = myObjects.get(i);
      if (obj instanceof Enemy || obj instanceof Bullet && obj.EnemyBullet) {
        if (dist(location.x, location.y, obj.location.x, obj.location.y) < size/2 + obj.size && invisTimer >= invisTimerCooldown) {
          lives--;
          obj.lives=0;
          invisTimer = 0;
        //  println("yes");
   
        }
        
      } if(obj instanceof Asteroid) {
      if (dist(location.x, location.y, obj.location.x, obj.location.y) < size/2 + obj.size && invisTimer >= invisTimerCooldown) {
          lives--;
          //obj.lives=0;
          invisTimer = 0;
          //score++;
   
        }
      }
    
      
      i++;
    }
  
 invisTimer++;
    
    if (invisTimer <= 60 * sec){
      col = red;
    } else{
     col = 0;  
    }
     //println(lives);
    // println(invisTimer);
   //  println(location.x,location.y,"spaceship");
    
    
  }
  
 
  
  
  
  
  
  
  
  
  
  
  
  
  }
