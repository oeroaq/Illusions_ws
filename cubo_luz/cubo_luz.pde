void setup() {
  size(500, 500, P3D);
}
int value =0;
int collor = 0;
void draw() {
  translate(width/2,height/2);
  rotateY(0.5);
  rotateX(0.3);
  background(100,100,255);
  
  background(collor);
  noFill();
  strokeWeight(6);
  stroke(255, 255, 255);
  box(100);
  rotateY(-0.5);
  rotateX(-0.3);
  stroke(0);
  
  //Empezando por la esfera superior derecha, hacia la izquierda van en orden de codigo
  translate(88, -64, -125);
  sphere(15);
  translate(-88, 64, 125);
  
  translate(20, -28, -125);
  sphere(15);
  translate(-20, 28, 125);
  
  translate(-25, -89, -125);
  sphere(15);
  translate(25, 89, 125);
  
  translate(-78, -45, -125);
  sphere(15);
  translate(78, 45, 125);
  
  translate(-80, 72, -125);
  sphere(15);
  translate(80, -72, 125);
  
  translate(-25, 50, -125);
  sphere(15);
  translate(25, -50, 125);
  
  translate(25, 80, -125);
  sphere(15);
  translate(-25, -80, 125);
  
  translate(95, 65, -125);
  sphere(15);
  translate(-25, -80, 125);
   
}

void mousePressed() {
  if (collor == 0) {
    collor = 255;
  } else {
    collor = 0;
  }
}
