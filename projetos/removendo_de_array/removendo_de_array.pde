ArrayList<PVector> objetos = new ArrayList<PVector>();

void setup() {
  size(600, 400);
  
  int y = 50;
  for (int i = 0; i < 10; i++) {
    objetos.add(new PVector(50, y));
    y += 20;
  }
  
}

void draw() {
  
  for (int i = objetos.size() - 1; i >= 0; i--) {
    println("indice com erro: " + i + " tam do array: " + objetos.size());
    PVector v = objetos.get(i);
    ellipse(v.x, v.y, 20, 20);
    
    if (dist(v.x, v.y, mouseX, mouseY) <= 10) {
      objetos.remove(i);
    }
  }
}
