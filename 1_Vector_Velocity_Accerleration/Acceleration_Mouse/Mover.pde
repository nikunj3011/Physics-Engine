
class Mover {

  PVector position;
  PVector velocity;
  PVector acceleration;
  float topspeed;

  Mover() {
    position = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    topspeed = 5;
  }

  void update() {
    PVector mouse = new PVector(mouseX,mouseY);
    mouse.sub(position);
    mouse.setMag(0.5);
    acceleration=mouse;
    
    velocity.add(acceleration);
    position.add(velocity);
    velocity.limit(topspeed); 
    
  }

  void display() {
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(position.x, position.y, 48, 48);
  }

  void checkEdges() {

    if (position.x > width) {
      position.x = 0;
    } 
    else if (position.x < 0) {
      position.x = width;
    }

    if (position.y > height) {
      position.y = 0;
    } 
    else if (position.y < 0) {
      position.y = height;
    }
  }
}
