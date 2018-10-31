class Triangulo extends Forma {
  
  private float altura;
  private float base;
  
  public Triangulo(float x, float y, float altura, float base) {
    super.x = x;
    super.y = y;
    this.altura = altura;
    this.base = base;
  }

  public void desenhar() {
    fill(255);
    float x = super.x, y = super.y;
    triangle(
      x, y, 
      x - base/2, y + altura, 
      x + base/2, y + altura
    );
    fill(0);
    text("Área = " + getArea(), super.x, super.y + this.altura);
  }
  
  public float getArea() {
    return (this.base * this.altura) / 2;
  }
}
