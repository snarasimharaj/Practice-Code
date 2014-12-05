int count = 200;
PVector[] loc = new PVector[count];
PVector [] vel = new PVector[count];
PVector [] acc = new float[count];
float[] sz = new float[count];
PImage flower;

void setup(){
  size(800,600);
  for(int i = 0; i< count; i++){
    sz[i] = random(
  flower = loadImage("lotus flower black and white.jpg");
  
}

void draw(){
  background(255);
  image(flower, mouseX, mouseY, flower.width, flower.height);
}
