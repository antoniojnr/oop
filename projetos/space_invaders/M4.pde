public class M4 extends Monstro {
  
  public M4(PImage i, float x, float y) {
    super.imagem = i;
    super.x = x;
    super.y = y;
  }
  
  public void mover() {
    super.x += 4;
    tratarBordas();
  }
  
  public void getValor() {
  }
}
