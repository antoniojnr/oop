class Character {
  
  PVector pos, vel, acc;
  int raio = 20;
  
  public Character(PVector pos) {
    this.pos = pos;
    this.vel = new PVector(0, 0);
    this.acc = new PVector(0, 0.9);
  }
  
  public void desenhar() {
    ellipse(pos.x, pos.y, raio * 2, raio * 2);
  }
  
  public void mover() {
    this.vel.add(acc);
    this.pos.add(vel);
    
    if (this.pos.y >= 400 - raio) {
      this.pos.y = 400 - raio;
      this.vel.mult(-0.3);
    }
  }
  
  public void pular() {
    if (keyCode == 32) {
      this.vel.add(new PVector(0, -20));
    }
  }
}
