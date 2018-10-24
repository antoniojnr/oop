public class Carro extends Veiculo {
  
  private float velocidade;
  
  public Carro() {
    velocidade = 2;
  }
  
  public void setVelocidade(float vel) {
    this.velocidade = vel;
  }
  
  public float getVelocidade() {
    return this.velocidade;
  }
}
