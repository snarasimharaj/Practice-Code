PImage flower;

void setup(){
  size(800,600);
  flower = loadImage("lotus flower black and white.jpg");
  
}

void draw(){
  background(255);
  image(flower, mouseX, mouseY, flower.width, flower.height);
}
