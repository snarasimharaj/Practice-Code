class Particle {                                                //declare class called Particle
  PVector loc, vel, acc;                                        //declare variables location, velocity, and acceleration                             
  float sz;                                                     //declare variable size

  Particle(float tempsz) {  
    loc = new PVector(290, 240);                                //initialize location
    vel = new PVector(random(-4, -1), random(-3, -1));          //initialize velocity
    acc = new PVector(0, -.3);                                  //initialize acceleration
    sz = tempsz;                                                //initialize size of particle
  }

  void display() {
    ellipse(loc.x, loc.y, sz, sz);                              //display particle
  }

  void move() {
    loc.add(vel);                                                //add velocity to location
    vel.add(acc);                                                //add acceleration to velocity
  }
  boolean pop() {
    if (loc.y+sz/2<0) {                                          //if particle goes off the top of the screen...
      return true;                                               //return true
    } else {                                                     //if particle does not go off the top of the screen...
      return false;                                              //return false
    }
  }
}

