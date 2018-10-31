abstract public class Veiculo {
  
  private float velocidade;
  protected float x;
  protected float y;
  
  public Veiculo() {
    this.velocidade = 0;
    this.x = 0;
    this.y = 250;
  }
  
  abstract public void desenhar();
  
  final public void mover() {
    this.x += this.getVelocidade();
  }
  
  public void setVelocidade(float vel) {
    this.velocidade = vel;
  }
  
  public float getVelocidade() {
    return this.velocidade;
  }
}
