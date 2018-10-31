public class M1 extends Monstro {
  
  public M1(PImage i, float x, float y) {
    super.imagem = i;
    super.x = x;
    super.y = y;
  }
  
  public void mover() {
    super.x += 1;
    tratarBordas();
  }
  
  public void getValor() {
  }
}
