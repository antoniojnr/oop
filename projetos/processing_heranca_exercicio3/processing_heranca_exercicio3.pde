Veiculo carro;
Veiculo aviao;
Veiculo navio;
Veiculo veiculo = new Veiculo();

void setup() {
  size(500, 500);
  carro = new Carro(loadImage("car.png"));
  aviao = new Aviao(loadImage("airplane.png"));
  navio = new Navio(loadImage("ship.png"));
}

void draw() {
  background(255);
  veiculo.desenhar();
  veiculo.mover();
  carro.desenhar();
  carro.mover();
  aviao.desenhar();
  aviao.mover();
  navio.desenhar();
  navio.mover();
}
