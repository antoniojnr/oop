ArrayList<Desenhavel> formas = new ArrayList<Desenhavel>();

void setup() {
  size(500, 500);
  formas.add(new Circulo(100, 100));
  formas.add(new Quadrado(200, 200));
  formas.add(new Triangulo(300, 300));
}

void draw() {
  for (Desenhavel d : formas) {
    d.desenhar();
    Controlavel c = (Controlavel) d;
    c.subir();
  }
}
