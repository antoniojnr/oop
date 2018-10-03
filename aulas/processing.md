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

Um *sketch* é um arquivo de animação. Para definir um *sketch*, você, tipicamente, precisará definir duas funções: `setup()` e `draw()`.

### `setup()`

A função `setup()` é chamada uma vez quando o programa inicia. É usada para definir propriedades iniciais do ambiente, como tamanho da tela e cor do plano de fundo, ou para carregar imagens e fontes no início do programa.

Somente pode haver uma função `setup()` para cada programa e ela não deve ser chamada novamente após sua execução inicial.

**Nota:** Variáveis declaradas dentro de `setup()` não são acessíveis dentro de outras funções, inclusive `draw()`.

### `draw()`

Chamada diretamente após `setup()`, a função `draw()` executa continuamente o código contido no seu bloco até que o programa seja finalizado ou até que `noLoop()` seja chamada.

Se `noLoop()` for chamada em `setup()`, `draw()` ainda será executada uma vez antes de parar. `draw()` é chamada automaticamente e nunca deve ser chamada explicitamente.

Controle-a com `noLoop()`, `redraw()` e `loop()`. Depois que `noLoop()` parar o código em `draw()`, `redraw()` faz com que o código dentro de `draw()` execute uma vez e `loop()` faz com que o código volte a executar continuamente.

## Configuração do sketch

Use as funções e constantes a seguir para configurar como o seu sketch. Você poderá definir propriedades como o tamanho do painel onde poderá desenhar, velocidade de atualização da animação, entre outros.

### `createCanvas()`

`createCanvas(largura, altura)` cria um novo painel de dimensões `largura` x `altura`.

### `resizeCanvas()`

`resizeCanvas(largura, altura)` redimensiona o painel com as novas dimensões `largura` x `altura`.

### `frameRate()`

`frameRate(fr)` define um novo valor para a quantidade de quadros por segundos desenhados. Para `frameRate(30)`, o programa tentará atualizar os quadros 30 vezes por segundo.

## Desenhando formas

## Outras funções

Consulte a referência da linguagem para mais informações: [https://p5js.org/reference](https://p5js.org/reference)
