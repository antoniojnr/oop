public class Nave {
  
  private float x;
  private float y;
  private final int ALTURA = 30;
  private final int LARGURA = 30;
  public ArrayList<PVector> balas = new ArrayList<PVector>();
  
  public Nave(float x, float y) {
    this.x = x;
    this.y = y;
  }
  
  public void atirar() {
    balas.add(new PVector(this.x, this.y));
  }
  
  public float getX() {
    return this.x;
  }
  
  public void mover(float novoX) {
    if (estahNaArea(novoX)) {
      this.x = novoX;
    }
  }
  
  public void desenhar() {
    fill(#68F50C);
    
    triangle(x, y, x - LARGURA/2, y + ALTURA, x + LARGURA/2, y + ALTURA);
    
    for (PVector bala : balas) {
      ellipse(bala.x, bala.y, 5, 5);
      bala.y = bala.y - 5;
    }
  }
  
  public boolean estahNaArea(float x) {
    // Forma 1
    if (!(x <= LARGURA/2 || x >= width - LARGURA/2)) {
      return true;
    } else {
      return false;
    }
    
    // Forma 2
    //return !(x <= LARGURA/2 || x >= width - LARGURA/2);
  }
}
