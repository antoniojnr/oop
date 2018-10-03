void setup() {
  size(300, 200);
  frameRate(20);
}

Circulo c = new Circulo(150, 100, 50);
Circulo c1 = new Circulo(250, 150, 50);

void draw() {
  c.desenhar(#188EB7);
  c1.desenhar();
}
