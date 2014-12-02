GravityBall[] s = new GravityBall[100];

void setup() {
  size(800, 500);
  for (int i = 0; i < s.length; i++) {
    s[i] = new GravityBall();
  }
}
void draw() {
  background(0);
  for (int i = 0; i < s.length; i++) {
    s[i].display();
    s[i].move();
    s[i].bounce();
  }
}



class GravityBall {

  PVector loc, vel, acc;
  float sz;

  GravityBall() {
    sz = 30;
    loc = new PVector(random(width),random(height/2));
    vel = new PVector(0, 0);
    acc = new PVector(0, .2);
  }

  void display() {
    ellipse(loc.x, loc.y, sz, sz);
  }
  
  void move(){
    vel.add(acc);
    loc.add(vel);
  }
  
  void bounce(){
    if(loc.y+sz/2> height){
      loc.y = height - sz/2;
      vel.y = -abs(vel.y);
    }
  }
}
    
