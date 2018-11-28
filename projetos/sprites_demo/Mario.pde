class Mario {
  Sprite parado;
  Sprite andando;
  Sprite pulando;
  
  static final int PARADO = 0;
  static final int ANDANDO = 1;
  static final int PULANDO = 2;
  
  int estado = PARADO;
  
  float x;
  float y;
  int altura = 28;
  float vel = 0;
  float grav = 0.9;
  int zoom;
  
  public Mario(PImage sprites, float x, float y, int zoom) {
    this.x = x;
    this.y = y;
    this.zoom = zoom;
    this.altura = altura * zoom;
    
    PImage[] parado = new PImage[]{
      sprites.get(208, 76, 16, 28)
    };
    PImage[] andando = new PImage[]{
      sprites.get(208, 76, 16, 28),
      sprites.get(328, 76, 16, 28),
      sprites.get(368, 76, 16, 28)
    };
    PImage[] pulando = new PImage[]{
      sprites.get(208, 114, 16, 31),
      sprites.get(248, 114, 16, 31)
    };
    
    this.parado = new Sprite(parado, zoom);
    this.andando = new Sprite(andando, zoom);
    this.pulando = new Sprite(pulando, zoom);
  }
  
  void mostrar() {
    if (estado == PARADO) {
      this.parado.mostrar(x, y, 1);
    } else if (estado == ANDANDO) {
      this.andando.mostrar(x, y, 10);
    } else if (estado == PULANDO) {
      this.pulando.mostrar(x, y, 10);
    }
  }
  
  void mover() {
    vel += grav;
    y += vel;
    
    if (y >= height - altura) {
      y = height - altura;
      this.estado = ANDANDO;
    }
  }
  
  void setEstado(int estado) {
    // Verificar se this.estado == ANDANDO impede que o Mario
    // pule quando já estiver pulando.
    if (estado == PULANDO && this.estado == ANDANDO) {
      this.vel = -15;
      this.grav = 0.9;
    }
    this.estado = estado;
  }
}
