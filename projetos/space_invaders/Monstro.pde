public abstract class Monstro implements Desenhavel {
  
  PImage imagem;
  float x, y;
  int valor;
  final int LARGURA = 50;
  
  abstract void mover();
  
  public boolean colidiu(float x1, float y1) {
    if (y1 >= y && y1 - y <= imagem.height && x1 >= x && x1 <= x + imagem.width) {
      return true;
    } else {
      return false;
    }
  }
  
  public void tratarBordas() {
    if (x > width) {
      x = -50;
    }
  }
  
  public void desenhar() {
    imagem.resize(LARGURA, 0);
    image(imagem, x, y);
  }
  
  abstract void getValor();
}
