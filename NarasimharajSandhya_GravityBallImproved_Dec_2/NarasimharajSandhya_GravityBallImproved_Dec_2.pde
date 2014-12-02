float x, y, velX, velY, gravity, sz;

void setup() {
  size(800, 500);
  x = width/2;
  y = height*.25;
  velX = 3;
  velY = 1;
  sz = 20;
  gravity = 1;
}

void draw() {
  background(0);
  ellipse(x, y, sz, sz);
  velY += gravity;
  x += velX;
  y += velY;

  if (y + sz/2 > height) {
    velY = -abs(velY);
  }
  if (x + sz/2 > width) {
    velX = -abs(velX);
  }
  if (x - sz/2 < 0) {
    velX = abs(velX);
  }
}
