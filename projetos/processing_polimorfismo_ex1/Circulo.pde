public class Circulo extends Forma {
  
  private float raio;
  
  public Circulo(float x, float y, float r) {
    super.x = x;
    super.y = y;
    this.raio = r;
  }
  
  public void desenhar() {
    fill(255);
    ellipse(super.x, super.y, this.raio * 2, this.raio * 2);
    fill(0);
    text("Área = " + getArea(), super.x, super.y + this.raio);
  }
  
  public float getArea() {
    return 3.14 * this.raio * this.raio;
  }
}
