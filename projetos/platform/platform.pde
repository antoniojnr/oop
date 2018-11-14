Character c;

void setup() {
  size(500, 500);
  c = new Character(new PVector(50, 50));
}

void draw() {
  background(255);
  c.desenhar();
  c.mover();
  rect(0, 400, 500, 100);
}

void keyPressed() {
  c.pular();
}
