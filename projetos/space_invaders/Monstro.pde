public abstract class Monstro {
  
  PImage imagem;
  float x, y;
  int valor;
  
  abstract void mover();
  
  public void tratarBordas() {
    if (x > width) {
      x = 0;
    }
  }
  
  public void desenhar() {
    imagem.resize(50, 0);
    image(imagem, x, y);
  }
  
  abstract void getValor();
}
