final int NB = 2500;
float speedMax = 16;
PVector[] pos = new PVector[NB];
float maxDist;
final int MODE_1 = 0;//behind the scene
final int MODE_2 = 1;//circles
final int MODE_3 = 2;//rectangles
int currentMode = MODE_2;
float l, L;

void setup()
{
  size(500, 400, P2D);
  maxDist = sqrt(width*width + height*height);
  speedMax = maxDist / 10;
  l = min(width, height);
  L = max(width, height);
  rectMode(CENTER);
  noFill();
  for (int i = 0; i < NB; i++)
  {
    pos[i] = new PVector(random(width), random(height));
  }
}

void draw()
{
  background(255);
  PVector mous = new PVector(mouseX, mouseY);
  PVector sum = new PVector(0, 0);
  float distance;
  for (int i = 0; i < NB; i++)
  {
    sum.add(PVector.sub(mous,pos[i]));
  }
  sum.mult(.0001);
  sum.limit(speedMax);
  
  for (int i = 0; i < NB; i++)
  {
    pos[i].add(sum);
    distance = PVector.dist(mous, pos[i]);
    stroke(map(distance, 0, maxDist, 10, 120), map(distance, 0, maxDist, 50, 10));
    strokeWeight(1);
    ellipse(pos[i].x, pos[i].y, 2*distance, 2*distance);
    
   }
}

void mousePressed()
{
  stroke(126);
    line(mouseX+5, mouseY, mouseX-5, mouseY);
    line(mouseX, mouseY+5, mouseX, mouseY-5);
}