# Roteiro da aula

## Olá Processing

### Apresentação

Processing é uma linguagem para aprender a programar no contexto de artes visuais, tornando programação acessível a artistas, designers, educadores e iniciantes. Possui suporte a programação usando Java e um conjunto completo de funcionalidades para desenho e animação.

### Download

Baixe instalador a partir do link: [https://processing.org/download/](https://processing.org/download/).

### Criando um sketch

Seu programa Processing é criado em Java. Abra o Processing e você já terá o editor disponível para criar um novo *sketch*. Um *sketch* é um programa auto-contido capaz de exibir uma animação. Insira o código abaixo e aperte `CTRL + R` para executar.

```java
void setup() {

}

void draw() {
  ellipse(50, 50, 80, 80);
}
```

Se você viu um círculo branco sobre uma telinha cinza, então deu tudo certo!

O projeto completado nesta parte está [aqui](https://github.com/antoniojnr/oop/tree/master/projetos/p5js-inicio).

## Entendendo um sketch

Para definir um *sketch*, você, tipicamente, precisará definir duas funções: `setup()` e `draw()`.

### `setup()`

A função `setup()` é chamada uma vez quando o programa inicia. É usada para definir propriedades iniciais do ambiente, como tamanho da tela e cor do plano de fundo, ou para carregar imagens e fontes no início do programa.

Somente pode haver uma função `setup()` para cada programa e ela não deve ser chamada novamente após sua execução inicial.

**Nota:** Variáveis declaradas dentro de `setup()` não são acessíveis dentro de outras funções, inclusive `draw()`.

### `draw()`

Chamada diretamente após `setup()`, a função `draw()` executa continuamente o código contido no seu bloco até que o programa seja finalizado ou até que seja chamada uma função para pausar a sua execução.

## Configuração do sketch

Use as funções e constantes a seguir para configurar como o seu *sketch*. Você poderá definir propriedades como o tamanho da tela onde poderá desenhar, velocidade de atualização da animação, entre outros.

### `size()`

`size(largura, altura)` cria um novo painel de dimensões `largura` x `altura`.

### `frameRate()`

`frameRate(fr)` define um novo valor para a quantidade de quadros por segundos desenhados. Para `frameRate(30)`, o programa tentará atualizar os quadros 30 vezes por segundo.

## Desenhando formas

### `ellipse()`

`ellipse(x, y, r1, r2)` desenha uma elipse na posição de coordenadas `x` e `y`, e raios `r1` e `r2`.

### `line()`

`line(x1, y1, x2, y2)` desenha uma linha do ponto (`x1`, `y1`) a (`x2`, `y2`).

### `rect()`

`rect(x, y, l, a)` desenha um retângulo com o canto superior esquerdo posicionado no ponto (`x`, `y`), de largura `l` e altura `a`.

### Exercício

1. Como você desenharia, usando apenas a função `line()`, um triângulo de vértices (`10`, `10`), (`50`, `10`) e (`30`, `45`)?

2. Como você desenharia, usando apenas a função `line()`, um retângulo cujo canto superior esquerdo está no vértice (`10`, `10`) e possui 40 pixels de largura e 30 de altura?

## Outras funções

Consulte a referência da linguagem para mais informações: [https://processing.org/reference/](https://processing.org/reference/)
