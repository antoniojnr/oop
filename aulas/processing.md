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

<pre>
       ._________.
 (x1,y1)         (x2,y2)
</pre>

### `rect()`

`rect(x, y, l, a)` desenha um retângulo com o canto superior esquerdo posicionado no ponto (`x`, `y`), de largura `l` e altura `a`.

### Exercício

1. Como você desenharia, usando apenas a função `line()`, um triângulo de vértices (`10`, `10`), (`50`, `10`) e (`30`, `45`)?

2. Como você desenharia, usando apenas a função `line()`, um retângulo cujo canto superior esquerdo está no vértice (`10`, `10`) e possui 40 pixels de largura e 30 de altura?

## Tratando eventos

A utilização de métodos tratadores de eventos permitem que se possa adicionar interatividade à animação. Através do mouse ou teclado, o usuário pode interagir com a animação, ampliando a gama de possibilidades de uso do Processing. É possível adicionar métodos que respondem ao movimento, clique ou arrasto do mouse, ou ainda ao pressionamento de uma tecla. Também é possível saber qual tecla foi pressionada e em que posição da tela o ponteiro do mouse se encontra.

### Mouse

Em Processing, são tratados os seguintes eventos de mouse:
* `mouseClicked()`: quando o mouse é pressionado e solto;
* `mouseDragged()`: quando o mouse é pressionado, segurado e arrastado;
* `mouseMoved()`: quando o ponteiro do mouse é movido;
* `mousePressed()`: quando o mouse é pressionado (antes de ser solto);
* `mouseReleased()`: quando o botão do mouse é solto;
* `mouseWheel()`: quando a roda do mouse é girada.

Ainda há as variáveis de sistema:
* `mouseButton`: contém o valor correspondente ao botão do mouse pressionado: `LEFT`, `CENTER` ou `RIGHT`;
* `mousePressed`: `true` se existe um botão pressionado e `false`, caso contrário;
* `mouseX`: coordenada X da posição atual do mouse;
* `mouseY`: coordenada Y da posição atual do mouse;
* `pmouseX`: coordenada X da posição do mouse no quadro anterior;
* `pmouseY`: coordenada Y da posição do mouse no quadro anterior.

### Teclado

Há os seguintes eventos de teclado:
* `keyPressed()`: quando uma tecla é pressionada (antes de ser solta);
* `keyReleased()`: quando uma tecla é solta;
* `keyTyped()`: quando uma tecla é pressionada, mas teclas como Ctrl, Shift e Alt são ignoradas.

E as seguintes variáveis de sistema:
* `key`: o valor da tecla pressionada mais recentemente;
* `keyCode`: usada para retornar o valor de teclas especiais, como as direcionais e CTRL, SHIFT e ALT;
* `keyPressed`: `true` se existe uma tecla pressionada e `false`, caso contrário.

## Próximo assunto

[Conceitos de orientação a objeto aplicados em Processing](https://github.com/antoniojnr/oop/blob/master/aulas/processing-oo-intro.md)

## Outras funções

Consulte a referência da linguagem para mais informações: [https://processing.org/reference/](https://processing.org/reference/)
