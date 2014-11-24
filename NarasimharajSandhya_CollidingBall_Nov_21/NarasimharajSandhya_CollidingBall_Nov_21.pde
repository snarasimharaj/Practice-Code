PVector loc, vel, acc;
PVector loc2, vel2, acc2;
int sz = 70;
int sz = 200;

void setup() {
  size(800, 500);
  loc = new PVector(width/2, height/2);
  vel = PVector.random2D();
  acc = new PVector(0, 0);
  loc2 = new PVector(width*.25, height*.25);
  vel2 = PVector.random2D();
  acc2 = new PVector(0, 0);
  noCuror();
}

void setup() {
  background(0);
  vel.add(acc);
  loc.add(vel);
  vel2.add(acc2);
  loc2.add(vel2);

  if (loc.dist(loc2) < sz/2 +sz2/2) {
    if (loc.x < loc2.x) {
      vel.x = -abs(vel.x);
      vel2.x = abs(vel2.x);
    }

