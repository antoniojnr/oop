public class M3 extends Monstro {
  
  public M3(PImage i, float x, float y) {
    super.imagem = i;
    super.x = x;
    super.y = y;
  }
  
  public void mover() {
    super.x += 3;
    tratarBordas();
  }
  
  public void getValor() {
  }
}
