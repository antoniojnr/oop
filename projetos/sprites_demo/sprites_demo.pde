PImage sprites;
Mario mario;

void setup() {
  size(500, 500);
  sprites = loadImage("smw_mario_sheet.png");
  
  mario = new Mario(sprites, 250, 250, 3);
}

void draw() {
  background(255);
  mario.mostrar();
  mario.mover();
}

void keyPressed() {
  if (keyCode == 38) {
    mario.setEstado(Mario.PULANDO);
  }
}
