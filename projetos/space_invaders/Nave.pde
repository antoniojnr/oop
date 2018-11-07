public class Nave {
  
  private float x;
  private float y;
  private final int ALTURA = 30;
  private final int LARGURA = 30;
  
  public Nave(float x, float y) {
    this.x = x;
    this.y = y;
  }
  
  public void atirar() {
  }
  
  public void mover(float novoX) {
    if (!(novoX <= LARGURA/2 || novoX >= width - LARGURA/2)) {
      this.x = novoX;
    }
  }
  
  public void desenhar() {
    fill(#68F50C);
    
    triangle(x, y, x - LARGURA/2, y + ALTURA, x + LARGURA/2, y + ALTURA);
  }
  
  public boolean estahNaArea(float x) {
    if (!(x <= LARGURA/2 || x >= width - LARGURA/2)) {
      return true;
    } else {
      return false;
    }
  }
}
