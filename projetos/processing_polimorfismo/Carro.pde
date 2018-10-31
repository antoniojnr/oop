public class Carro extends Veiculo {
  
  private PImage imagem;
  
  public Carro(PImage i) {
    super.velocidade = 2;
    this.imagem = i;
  }
  
  public void desenhar() {
    this.imagem.resize(100, 50);
    image(this.imagem, super.x, super.y);    
  }
}
