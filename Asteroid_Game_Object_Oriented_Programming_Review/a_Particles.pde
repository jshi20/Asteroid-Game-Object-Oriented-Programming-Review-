class Particles extends GameObject {
  int alpha;
  Particles(float x, float y) {
    velocity = new PVector(random(2, 4), random(2, 4));
    velocity.rotate(random(TWO_PI));
    velocity.setMag(28);  //massive explosion
    location = new PVector(x,y);
    alpha=200;
    lives = 1;
    size = 8;
  }
  void act() {
    pushMatrix();
    super.act();
    alpha-=5;
    offScreen();
    popMatrix();
  }
  void show() {
    pushMatrix();
    noStroke();
    fill(255, alpha);
    rect(location.x, location.y, size, size);
    popMatrix();
  }
}
