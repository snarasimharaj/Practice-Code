ArrayList<Particle> allParticles = new ArrayList<Particle>();

void setup() {
  size(800, 500);
  //  for (int i = 0; i< allParticles.length; i++) {
  //    allParticles[i] = new Particle();
  //  }
}

 
void draw() {
  background(0);
  if (mousePressed) {
    allParticles.add(new Particle());
  }
  for (int i = 0; i < allParticles.size (); i++) {
    Particle currentParticle = allParticles.get(i);
    currentParticle.display();
    currentParticle.move();
  }
}


class Particle {
  PVector loc, vel, acc;
  float sz;

  Particle() {
    loc = new PVector(mouseX, mouseY);
    vel = new PVector(random(-4, 4), random(-3, -1));
    acc = new PVector(0, .3);
    sz = 20;
  }

  void display() {
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    loc.add(vel);
    vel.add(acc);
  }
}


