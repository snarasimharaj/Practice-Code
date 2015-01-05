ArrayList<Particle> allParticles = new ArrayList<Particle>();    //declare new arraylist
PImage fish;                                                     //declare image fish
PImage ocean;                                                    //declare image ocean

void setup() {
  size(800, 500);                                                //size of display
  fish = loadImage("fish1.png");                                 //load image fish
  ocean = loadImage("ocean.jpg");                                //load image ocean
}  



void draw() {
  background(0);                                                 //add background
  image(ocean, 0, 0, 800, 500);                                  //display image ocean
  image(fish, 200, 50, fish.width/5, fish.width/5);              //display image fish

  if (mousePressed) {                                            //make bubbles when mouse is pressed
    allParticles.add(new Particle(random(5, 15)));
  }
  for (int i = allParticles.size ()-1; i>= 0; i--) {             //go through arraylist
    Particle currentParticle = allParticles.get(i);              //get particle out of arraylist from the class
    currentParticle.display();                                   //display particle
    currentParticle.move();                                      //move particle
    if (currentParticle.pop()) {                                 //if pop is true...
      allParticles.remove(i);                                    //remove particle
    }
  }
  noCursor();
}


