class Retangulo {
  public float x;
  public float y;
  public float largura;
  public float altura;
  
  public Retangulo(float x, float y, float largura, float altura) {
    this.x = x;
    this.y = y;
    this.largura = largura;
    this.altura = altura;
  }
  
  public void desenhar() {
    fill(255);
    rect(this.x, this.y, this.largura, this.altura);
  }
}
