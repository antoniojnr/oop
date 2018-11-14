public class Quadrado implements Desenhavel, Controlavel {
 
  private float x;
  private float y;
  
  public Quadrado(float x, float y) {
    this.x = x;
    this.y = y;
  }
  
  public void desenhar() {
    rect(this.x, this.y, 50, 50);
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
