class Circulo {
  private float x;
  private float y;
  private float raio;
  private int cor;
  
  public Circulo(float x, float y, float raio) {
    this.x = x;
    this.y = y;
    this.raio = raio;
  }
  
  public Circulo(float x, float y, float raio, int cor) {
    this(x, y, raio);
    this.cor = cor;
  }
  
  public float getX() {
    return this.x;
  }
  
  public float getY() {
    return this.y;
  }
  
  public void desenhar() {
    ellipse(this.x, this.y, this.raio, this.raio);
  }
  
  public void desenhar(int cor) {
    fill(cor);
    desenhar();
    fill(255);
  }
}
