class Asteroid extends GameObject {
  //1. Instance variables 

  //2. Constructor 
  Asteroid() {

    location = new PVector(random(width), (random (height)));
    velocity = new PVector(1, 0);
    velocity.rotate(random(TWO_PI));
    size = 100;
    lives =1;
  }

  Asteroid( float s, float x, float y) {
    lives =1;
    location = new PVector(x,y);
    velocity = new PVector(1,0);
    velocity.rotate(random(TWO_PI));
    size = s;
  }
  //3. Behaviour 

  void show() {
    pushMatrix();
    fill(0);
    strokeWeight(3);
    circle(location.x, location.y, size);
    popMatrix();
  }

  void act() {
    super.act();

    int i = 0;
    while (i < myObjects.size()) {
      GameObject obj = myObjects.get(i);
      if (obj instanceof Bullet && !obj.EnemyBullet) {
        if (dist(location.x, location.y, obj.location.x, obj.location.y) < size/2 + obj.size) {
          score++;
          obj.lives=0;
          obj.size=0;
          lives--;
      //  println(score);
        //  println(size);
          if(lives == 0 && size > 26) { //starts at size 200, goes to 100, then 50, then 25, etc. I stop it at 25 so when the asteroids become too small they disappear
          myObjects.add(new Asteroid(size/2, location.x, location.y));
          myObjects.add(new Asteroid(size/2, location.x, location.y));
          
          }
          for (int j = 0; j<random(10, 20); j++) myObjects.add(new Particles(location.x, location.y));
        
        //  println(lives);
        }
      }
      
  //    if (obj instanceof Spaceship) {
   //    if(dist(location.x, location.y, myShip.location.x, myShip.location.y) <= size/2 ) {
   //     println("1");
   //    }
        
  //    }
      
      
      i++;
    }

    if (location.x < -size/2) location.x = width+size/2;
    if (location.x > width+size/2) location.x = -size/2;
    if (location.y > height+size/2) location.y = -size/2;
    if (location.y < -size/2 )location.y = height+size/2;
    
    //println(location.x,location.y,"asteroid");
  }
  
}
