int c = 0;
float angle = 0;

void setup() {
    size(500, 500);
    noStroke();
}

void draw() {
    background(0);
    translate(width / 2, height / 2);
    c = 255;
    float rSub = map(0, 0, width, 5, 20);
    float aAdd = map(height, 0, height, PI / 2.0, PI / 48.0);
    cic(width / 2, rSub, angle, aAdd); 
    angle += PI / 23.0;
}

void cic(float radius, float rSub, float angle, float aAdd) {
    pushMatrix();
    do {
        fill(c);
        c = 255 - c;
        ellipse(0, 0, radius * 2, radius * 2);
        radius -= rSub;
        angle += aAdd;
        float r = rSub * 0.008;
        float x = cos(angle + aAdd) * r*15;
        float y = sin(angle + aAdd) * r*10;
        translate(x, y);
    } while(radius >= 1);
    popMatrix();
}