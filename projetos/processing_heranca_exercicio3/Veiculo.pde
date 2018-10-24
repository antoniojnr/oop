public class Veiculo {
  
  private float velocidade;
  private float x;
  private float y;
  
  public Veiculo() {
    this.velocidade = 0;
    this.x = 0;
    this.y = 250;
  }
  
  public void desenhar() {
    rect(this.x, this.y, 60, 30);
  }
  
  public void mover() {
    this.x += this.getVelocidade();
  }
  
  public void setVelocidade(float vel) {
    this.velocidade = vel;
  }
  
  public float getVelocidade() {
    return this.velocidade;
  }
}
