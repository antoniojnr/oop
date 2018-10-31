public class M2 extends Monstro {
  
  public M2(PImage i, float x, float y) {
    super.imagem = i;
    super.x = x;
    super.y = y;
  }
  
  public void mover() {
    super.x += 2;
    tratarBordas();
  }
  
  public void getValor() {
  }
}
