Forma circ;
Forma quad;
Forma triangulo;
ArrayList<Forma> formas = new ArrayList<Forma>();

void setup() {
  size(400, 300);
  
  formas.add(new Circulo(width/2, height/2, 60));
  formas.add(new Quadrado(100, 100, 60));
  formas.add(new Triangulo(200, 200, 40, 40));
}

void draw() {
  background(255);
  
  for (Forma f : formas) {
    f.desenhar();  
  }
  
  for (int x = 0; x < formas.size(); x++) {
    Forma f = formas.get(x);
    f.desenhar();
  }
}
