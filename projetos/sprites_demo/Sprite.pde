class Sprite {
  /* Cada uma das imagens que compõem os quadros da animação são 
  *  guardadas no array imagens.
  */
  PImage[] imagens;

  /* Representa o índice no array de imagens do PImage atual 
  *  sendo exibido.
  */
  int quadro = 0;
  
  /* Conta o número de frames decorridos. O valor desta variável
  *  aumenta em 1 a cada vez que mostrar() é chamado.
  */
  int fCount = 0;
  
  public Sprite(PImage[] imagens, int zoom) {
    for (PImage i : imagens) {
      // Aplica o zoom determinado a cada um dos quadros.
      // Basta aplicar o zoom na largura. A altura é redimensionada
      // proporcionalmente.
      i.resize(i.width * zoom, 0);
    }
    this.imagens = imagens;
  }
  
  void mostrar(float xpos, float ypos, int n) {
    // Mudar de quadro somente a cada n frames
    if (fCount++ > n) {
      // Reiniciar a contagem
      fCount = 0;
      // Os valores assumidos por quadro são: 0..this.imagens.length-1 
      quadro = (quadro + 1) % this.imagens.length;
    }
    // Mostrar a imagem no índice quadro, na posição (xpos, ypos)
    image(this.imagens[quadro], xpos, ypos);
  }
}
