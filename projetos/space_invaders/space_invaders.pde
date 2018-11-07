ArrayList<Monstro> monstros = new ArrayList<Monstro>();

void setup() {
  size(500, 500);
  
  int pos = 20;
  for (int i = 0; i < 9; i++) {
    monstros.add(new M1(loadImage("m1.png"), pos, 20));
    pos += 60;
  }
  
  pos = 20;
  for (int i = 0; i < 9; i++) {
    monstros.add(new M2(loadImage("m2.png"), pos, 80));
    pos += 60;
  }
  
  pos = 20;
  for (int i = 0; i < 9; i++) {
    monstros.add(new M3(loadImage("m3.png"), pos, 140));
    pos += 60;
  }
  
  pos = 20;
  for (int i = 0; i < 9; i++) {
    monstros.add(new M4(loadImage("m4.png"), pos, 200));
    pos += 60;
  }
}

void draw() {
  background(0);
  
  for (Monstro m : monstros) {
    m.desenhar();
    m.mover();
  }
}
