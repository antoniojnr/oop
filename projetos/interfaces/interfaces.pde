ArrayList<Circulo> formas = new ArrayList<Circulo>();

void setup() {
  size(500, 500);
  formas.add(new Circulo(100, 100));
  formas.add(new Circulo(200, 200));
  formas.add(new Circulo(300, 300));
}

void draw() {
  //for (Desenhavel d : formas) {
  //  d.desenhar();
  //  Controlavel c = (Controlavel) d;
  //  c.subir();
  //}
  
  for (int x = 0; x < formas.size(); x++) {
    Desenhavel d = formas.get(x);
    d.desenhar();
    Controlavel c = (Controlavel) d;
    c.subir();
  }
}
