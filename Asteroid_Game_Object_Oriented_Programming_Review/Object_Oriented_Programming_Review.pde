int mode;
int score; 
int EshotTimer; 

//Images
PImage joy;
PImage triumph;
PImage bicep;

  //color pallette
color black  = #000000;
color white  = #FFFFFF;
color purple = #490A3D;
color pink   = #BD1550;
color orange = #E97F02;
color yellow = #F8CA00;
color green  = #8A9B0F;
color red = #FF0000;
color blue = #add8e6;

final int INTRO = 1;
final int GAME = 2;
final int PAUSE =3;
final int GAMEOVER = 4;
final int GAMEWIN = 5; 

boolean wkey, akey, skey, dkey,spacekey;

Spaceship myShip;





Asteroid myAsteroid; 

ArrayList<GameObject> myObjects;

int ast = 5;  //controls the number of asteroids 

void setup(){
 size(800,800);
 
 joy = loadImage("laugh_emoji.png");
 triumph = loadImage("triumph_emoji.png");
 bicep = loadImage("bicep_emoji.png");
 
 mode = 1;
 
 rectMode(CENTER);
 
 score = 0; 
  
 
 myShip = new Spaceship();
 

 
 
 
 myAsteroid = new Asteroid();
 
 myObjects = new ArrayList<GameObject>();
 
 int i = 0;
 while (i < ast){
   myObjects.add(new Asteroid());
   i++;
 }
 
 wkey=skey=akey=dkey=spacekey=false;
 
 
 EshotTimer = 0;
 
 
}

void draw(){
 
  
  if (mode == INTRO){
    intro();
  }
  else if (mode == GAME){
    game();
  }
  else if (mode == PAUSE){
    pause();
  }
  else if (mode == GAMEOVER){
    gameover();
  }
  else if (mode == GAMEWIN){
    gamewin();
  }
  else{
   println("ERROR! YOUR MODE IS" + mode); 
  }
}
