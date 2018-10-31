public class Aviao extends Veiculo {
  
  private PImage imagem;
  
  public Aviao(PImage i) {
    super.velocidade = 10;
    this.imagem = i;
  }
  
  public void desenhar() {
    this.imagem.resize(100, 50);
    image(this.imagem, super.x, super.y);    
  }
}
