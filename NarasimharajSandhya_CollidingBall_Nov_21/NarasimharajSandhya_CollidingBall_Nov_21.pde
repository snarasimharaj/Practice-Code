PVector loc, vel, acc;
PVector mouse;
int sz = 70;

void setup(){
 size(800,500);
loc = new PVector(width/2, height/2);
vel = PVector.random2D();
acc = new PVector(0,0);
noCuror();
mouse = new PVector();
}

void setup(){
  mouse.set(mouseX, mouseY);
  background(0);
  
