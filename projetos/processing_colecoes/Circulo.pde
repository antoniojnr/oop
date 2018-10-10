class Circulo {
  private int x;
  private int y;
  private int raio;
  private int cor;
  
  public Circulo(int x, int y, int raio) {
    this.x = x;
    this.y = y;
    this.raio = raio;
  }
  
  public Circulo(int x, int y, int raio, int cor) {
    this(x, y, raio);
    this.cor = cor;
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
