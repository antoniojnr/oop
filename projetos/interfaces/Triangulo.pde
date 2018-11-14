public class Triangulo implements Desenhavel, Controlavel {
 
  private float x;
  private float y;
  
  public Triangulo(float x, float y) {
    this.x = x;
    this.y = y;
  }
  
  public void desenhar() {
    triangle(this.x, this.y, this.x, this.y + 50, this.x + 50, this.y);
  }
  
  public void subir() {
    this.y -= 5;
  }
  
  public void descer() {
    this.y += 5;
  }
  
  public void esquerda() {
    this.x -= 5;
  }
  
  public void direita() {
    this.y += 5;
  }
}
