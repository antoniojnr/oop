class Quadrado extends Forma {
  
  private float lado;
  
  public Quadrado(float x, float y, float lado) {
    super.x = x;
    super.y = y;
    this.lado = lado;
  }

  public void desenhar() {
    fill(255);
    rect(super.x, super.y, this.lado, this.lado);
    fill(0);
    text("Área = " + getArea(), super.x, super.y + this.lado);
  }
  
  public float getArea() {
    return this.lado * this.lado;
  }
}
