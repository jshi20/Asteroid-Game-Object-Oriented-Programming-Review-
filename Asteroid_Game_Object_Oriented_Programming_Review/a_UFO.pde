class Enemy extends GameObject {
  int w; //controls pattern of UFO, also is this size
  int deciderX;
  // int deciderX = 4;

  float randomX;
  float randomY;    //independant variables, doesn't matter where the enemy starts from 
  float randomVX;
  float randomVY;      //enemy velocity depends on where the enemy spawns from 

  int Ethreshold;


  //1. Instance variables (locaton, velocity, size, lives, all found in superclass GameObject

  //2. Construstor variables

  Enemy() {
    // println(deciderX);

    deciderX = (int) random(1, 5);

    if (deciderX == 1) {            //Spawns left side of the screen
      randomX = -300;
      randomY = random(30, 770);  
      randomVX = 2;
      randomVY = 0;
    }

    if (deciderX == 2) {            //Spawns right side of the screen
      randomX = 800;
      randomY = random(30, 770);  
      randomVX = -2;
      randomVY = 0;
    }

    if (deciderX == 3) {            //Spawns above screen
      randomX = random(30, 770);  
      randomY = -300;
      randomVX = 0;
      randomVY = 2;
    }

    if (deciderX == 4) {            //Spawns below screen 
      randomX = random(30, 770);
      randomY = 800;
      randomVX = 0;
      randomVY = -2;
    }



    location = new PVector(randomX, randomY);
    velocity = new PVector(randomVX, randomVY);

    size = 20;
    lives = 1;

    EshotTimer = 0;
    Ethreshold = 120;
  }

  //3. Behaviour variables 


  void show() {

    pushMatrix();
    if (lives == 1) {
      // pushMatrix();
      translate(location.x, location.y);

      //if(location.x < -200 && location.x > -150) location.x = -100;
      // if(location.x > -100) location.x = 900;
      // if(location.y > 900 && location.y < 950) location.y = -100;
      // if(location.y < 900) location.y = 900;
      //println(location.x);


      w = 50;  //concentric circles pattern 
      while (w>0) {
        //fill(random(255),random(255),random(255)); WARNING this will give you a seizure
        fill(blue);
        ellipse(0, 0, w, w);
        w = w - 10;
      }

      // popMatrix();
    }
    popMatrix();
  }

  void act() {
    super.act();

    EshotTimer++;
   // println(EshotTimer, Ethreshold, lives);
    if (EshotTimer > Ethreshold && lives == 1) {
      EshotTimer = 0;
      myObjects.add(new Bullet(red, location.x, location.y));
    }

    // println(EshotTimer);

    //println(lives);

    int i = 0;
    while (i < myObjects.size()) {
      GameObject obj = myObjects.get(i);
      if (obj instanceof Bullet && !obj.EnemyBullet) {
        if (dist(location.x, location.y, obj.location.x, obj.location.y) < w+10 + obj.size) {
          lives--;
          // w = 0;
          obj.lives=0;

          // println("yes");
          for (int j=0; j<random(10, 20); j++) myObjects.add(new Particles(location.x, location.y));
        }
      }



      i++;
    }




    if (location.x > 1000) lives = 0;
    if (location.x < -400) lives = 0;
    if (location.y < -400) lives = 0;
    if (location.y > 1000) lives = 0;
  }
}
