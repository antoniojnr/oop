public class Navio extends Veiculo {
  
  private PImage imagem;
  
  public Navio(PImage i) {
    super.velocidade = 0.5;
    this.imagem = i;
  }
  
  public void desenhar() {
    this.imagem.resize(100, 50);
    image(this.imagem, super.x, super.y);
  }
}
