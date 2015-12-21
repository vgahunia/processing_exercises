
float angle = 0.0;
float offset = 100;
float scalar = 3;
float speed = 0.05;

void setup() {
  size(200, 200);
  background(0, 90, 0);
  stroke(255);
  smooth();
}

void draw() {
  float x = offset + cos(angle) * scalar;
  float y = offset + sin(angle) * scalar;
  ellipse(x, y, 2, 2);
  angle += speed;
  scalar += speed;
  if (y > 210) {
    background(0, 90, 0);
    angle = 0.0;
    scalar = 3;
    speed += .02;
  }
}