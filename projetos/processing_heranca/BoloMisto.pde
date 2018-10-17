public class BoloMisto extends BoloChocolate {
  
  private int cor;
  
  public BoloMisto() {
    this.cor = #984502;
  }
  
  protected void setCor(int cor) {
    this.cor = cor;
  }
  
  public void preparar() {
    super.preparar();
    stroke(0);
    fill(this.cor);
    ellipse(250, 140, 80, 35);
    noStroke();
    fill(#FFD78B);
    rect(210, 100, 80, 20);
    stroke(0);
    ellipse(250, 100, 80, 35);
    line(210, 100, 210, 140);
    line(290, 100, 290, 140);
  }
}
