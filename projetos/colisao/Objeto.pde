class Objeto {
  public float x;
  public float y;
  public int l;
  public int a;
  
  public Objeto(float x, float y, int l, int a) {
    this.x = x;
    this.y = y;
    this.l = l;
    this.a = a;
  }
  
  public void desenhar() {
    rect(this.x, this.y, this.l, this.a);
  }
  
  public boolean colidiu(float x1, float y1) {
    if (y1 >= y && y1 - y <= a && x1 >= x && x1 <= x + l) {
      return true;
    } else {
      return false;
    }
  }
}
