ArrayList<Particle> allParticles = new ArrayList<Particle>();    //declare new arraylist
PImage fish;                                                     //declare image fish
PImage ocean;                                                    //declare image ocean

void setup() {
  size(800, 500);                                                //size of display
  fish = loadImage("fish1.png");                                   //load image fish
  ocean = loadImage("ocean.jpg");                                  //load image ocean
}  



void draw() {
  background(0);                                                 //add background
  image(ocean, 0, 0, 800, 500);                                    //specifications for image ocean
  image(fish, 200, 50, fish.width/5, fish.width/5);               //specifications for image fish

  if (mousePressed) {                                            //make bubbles when mouse is pressed
    allParticles.add(new Particle(random(5, 15)));
  }
  for (int i = allParticles.size ()-1; i>= 0; i--) {               //
    Particle currentParticle = allParticles.get(i);
    currentParticle.display();
    currentParticle.move();
    if (currentParticle.pop()) {
      allParticles.remove(i);
    }
  }
  noCursor();
}


class Particle {                                                //declare class called Particle
  PVector loc, vel, acc;                                        //declare variables location, velocity, and acceleration                             
  float sz;                                                     //declare variable size

  Particle(float tempsz) {
    loc = new PVector(290, 240);
    vel = new PVector(random(-4, -1), random(-3, -1));
    acc = new PVector(0, -.3);
    sz = tempsz;
  }

  void display() {
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    loc.add(vel);
    vel.add(acc);
  }
  boolean pop() {
    if (loc.y+sz/2<0) {
      return true;
    } else {
      return false;
    }
  }
}

