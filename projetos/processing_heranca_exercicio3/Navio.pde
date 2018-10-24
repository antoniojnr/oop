public class Navio extends Veiculo {
  
  private float velocidade;
  
  public Navio() {
    velocidade = 0.5;
  }
  
  public void setVelocidade(float vel) {
    this.velocidade = vel;
  }
  
  public float getVelocidade() {
    return this.velocidade;
  }
}
