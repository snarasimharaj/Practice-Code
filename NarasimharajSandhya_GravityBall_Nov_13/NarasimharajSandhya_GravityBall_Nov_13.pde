float x, y, velX, velY, gravity, sz;

void setup() {
  size(800, 500);
  x = width/2;
  y = height*.25;
  velX = 0;
  velY = 0;
  sz = 20;
  gravity = 1;
}

void draw() {
  background(0);
  ellipse(x, y, sz, sz);
  velY += gravity;
  x += velX;
  y += velY;

  if (y > height+sz/2) {
    velY = -abs(velY);
  }
}

