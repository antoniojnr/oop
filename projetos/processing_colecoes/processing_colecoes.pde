Circulo[] circulos = new Circulo[10];
ArrayList<Circulo> lista = new ArrayList<Circulo>();
Circulo c;

void setup() {
  size(300, 200);
  frameRate(20);
  
  c = new Circulo(width/2, height/2, 60);
  
  // Preenchendo o array
  // Como o array já tem um tamanho predefinido,
  // podemos usar circulos.length
  //for (int i = 0; i < circulos.length; i++) {
  //  float x = random(width);
  //  float y = random(height);
  //  float raio = random(10, 50);
  //  circulos[i] = new Circulo(x, y, raio);
  //}
  
  // Preenchendo o array
  // Como a lista está vazia, não podemos usar size()
  //for (int i = 0; i < 10; i++) {
  //  float x = random(width);
  //  float y = random(height);
  //  float raio = random(10, 50);
  //  Circulo c = new Circulo(x, y, raio);
  //  lista.add(c);
  //}
}

void draw() {
  // Desenhando os círculos do array
  //for (int i = 0; i < circulos.length; i++) {
  //  circulos[i].desenhar();  
  //}
  
  c.desenhar();
  
  // Desenhando os círculos da lista
  for (int i = 0; i < lista.size(); i++) {
    lista.get(i).desenhar(#089BFA); 
  }
}

void mouseClicked() {
  //float raio = random(10, 50);
  //Circulo c = new Circulo(mouseX, mouseY, raio);
  //lista.add(c);
  println(dist(mouseX, mouseY, c.getX(), c.getY()));
}

void keyReleased() {
  if (keyCode == 32) {
    float x = random(width);
    float y = random(height);
    float raio = random(10, 50);
    Circulo c = new Circulo(x, y, raio);
    lista.add(c);
    println(lista.size());
  }
}
