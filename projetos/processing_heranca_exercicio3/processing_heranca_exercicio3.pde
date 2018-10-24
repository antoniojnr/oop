Veiculo carro = new Carro();
Veiculo aviao = new Aviao();
Veiculo navio = new Navio();

void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  carro.desenhar();
  carro.mover();
  aviao.desenhar();
  aviao.mover();
  navio.desenhar();
  navio.mover();
}
