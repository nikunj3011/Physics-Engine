Ball b;

void setup() {
  size(200, 200);
  b = new Ball();
}

void draw() {
  background(255);
  b.update();
  b.display();
}
