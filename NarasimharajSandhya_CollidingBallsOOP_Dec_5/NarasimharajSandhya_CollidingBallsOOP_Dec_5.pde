Bounce [] bouncers = new Bouncer[100];
void setup() {
  size(800, 500);
  for (int i = 0; i < bouncers.length; i++) {
    bouncers[i] = new Bouncer(random(5, 50), random(.5, 10));
  }
}

void draw() {
  background(0);
  for (int i = 0; i < bouncers.length; i++) {
    bouncers[i].display();
    bouncers[i].move();
    bouncers[i].wallBounce();
    for(int j = 0; j < bouncers.l
  }

