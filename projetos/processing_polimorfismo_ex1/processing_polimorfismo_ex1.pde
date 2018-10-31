Forma circ;

void setup() {
  size(400, 300);
  circ = new Circulo(width/2, height/2, 60);
}

void draw() {
  background(255);
  circ.desenhar();
}
