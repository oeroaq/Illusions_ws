PImage bg, org;
int y;

void setup() {
  size(640, 360);
  bg = loadImage("bg.jpg");
  org = loadImage("0.png");
}

void draw() {
  background(bg);
  image(org,height*7/8,100,34,106);
  image(org,mouseX+10,mouseY+10,34,106);
}