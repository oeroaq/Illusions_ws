void setup() {
  size(500, 500);
  background(255);
  
}
void draw(){
  
  background(255);
  strokeWeight(1);
  translate(mouseX, mouseY);
  stroke(0, 0,255);
  for (int i=0; i<196; i=i+1) {
    rotate(5);
    line(0, 0, 400, 400);
  }
  strokeWeight(3);
  stroke(255, 0, 0);
  rotate(PI/2);
  translate(-250, -250);
  line(200, 0, 200, 500);
  line(300, 0, 300, 500);
  line(190, 0, 190, 500);
  line(310, 0, 310, 500);
  rotate(PI/2);
  translate(0, -500);
  line(200, 0, 200, 500);
  line(300, 0, 300, 500);
  line(190, 0, 190, 500);
  line(310, 0, 310, 500);
}