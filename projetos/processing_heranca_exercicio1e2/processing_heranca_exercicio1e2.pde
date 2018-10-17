Circulo c = new Circulo();
SmileyFace s = new SmileyFace();
Retangulo r = new Retangulo(100, 100, 200, 150);
Quadrado q = new Quadrado(0, 0, 50);
void setup() {
  size(400, 400);
}

void draw() {
  s.desenhar();
  s.desenharRosto();
  r.desenhar();
  q.desenhar();
}
