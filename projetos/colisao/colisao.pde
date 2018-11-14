Objeto o = new Objeto(200, 200, 100, 50);
float x, y;

void setup() {
  size(400, 400);
  
  x = 400;
  y = 400;
}

void draw() {
  background(255);
  if (!o.colidiu(x, y)) {
    fill(255);
  } else {
    fill(0);
  }
  
  o.desenhar();
  
  x = mouseX;
  y = mouseY;
  ellipse(x, y, 15, 15);
}
