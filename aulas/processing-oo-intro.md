# Conceitos de Orientação a Objeto

## Apresentação

Nesta aula, iremos aplicar os conceitos de orientação a objeto aprendidos até o momento em Processing.

## Classes

Para criar classes, clique na seta para baixo na barra de título do sketch e, em seguida, clique na opção "Nova aba". O nome da nova aba deverá ser o nome de sua nova classe – insira o nome sem a extensão `.java`.

Escreva o código Java normalmente, com o nome da classe igual ao nome do arquivo.

Por padrão, as classes criadas ficam todas no mesmo pacote do sketch, então não é necessário criar pacotes.

### Exercício

1. Crie uma classe `Circulo`. Qual(is) método(s) e construtor(es) você precisará definir para `Circulo`?

2. Qual(is) método(s) e/ou construtor(es) precisará(ão) ser sobrecarregado(s) em `Circulo`?

3. Crie duas classes: `Triangulo` e `Retangulo`. O que essas classes têm em comum com `Circulo`?

## Herança

Herança é um poderoso instrumento que auxilia na reutilização de código. Em programação orientada a objetos, permite que novos objetos **herdem** propriedades e métodos de objetos existentes. A classe da qual as propriedades e métodos são herdados é chamada de **superclasse** ou **classe base**. A classe que herda as propriedades e métodos é chamada de **subclasse** ou **classe derivada**. **Classe mãe** e **classe filha** também são termos utilizados.

A subclasse herda métodos e propriedades definidos com as visibilidades *default*, `public` ou `protected`.

Copie e execute o projeto [processing_heranca](https://github.com/antoniojnr/oop/tree/master/projetos/processing_heranca). Este projeto tem duas classes: `BoloChocolate` e `BoloAniversario`. Você verá um bolo de chocolate, ou pelo menos o que parece ser um bolo desenhado na tela.

![alt text](https://github.com/antoniojnr/oop/blob/master/aulas/bolo.png "Sketch")

Este é o comportamento definido pela classe `BoloChocolate`. Agora suponha que `BoloAniversario` herde as propriedades e métodos de `BoloChocolate`. `BoloChocolate` é a **superclasse** e `BoloAniversario` é a **subclasse**. Execute o exemplo comentando a Parte 1 indicada no código e retirando o comentário da Parte 2.

`BoloAniversario` herdou tudo de `BoloChocolate` e adicionou por cima deste uma cobertura de baunilha e M&Ms. :) O resultado é mostrado a seguir.

![alt text](https://github.com/antoniojnr/oop/blob/master/aulas/bolo-aniversario.png "Sketch")

As características de bolo de chocolate foram herdadas, é possível preparar um bolo chamando o método `preparar()`. Ambos os tipos de bolo possuem este método. Primeiro, porque ele está definido em `BoloChocolate` e, depois, porque `BoloAniversario` herda este método. Nem todo bolo precisa ter cobertura e M&Ms. O bolo de chocolate não tem e o bolo de aniversário adiciona essas características. Se for necessário fazer um novo tipo de bolo, basta herdar o comportamento de `BoloChocolate` e começar daí.

Essa foi a minha forma de explicar o básico sobre herança. Agora é preciso mostrar como as coisas são feitas em Java. Vamos deixar o desenho do bolo de lado na explicação. Caso queira ver o projeto completo, ele está disponível em: [processing_heranca](https://github.com/antoniojnr/oop/tree/master/projetos/processing_heranca).

## Herança em Java

Para definir que uma classe é subclasse de outra em Java, utiliza-se a palavra-chave `extends`. No código a seguir, `BoloAniversario` é a superclasse e `BoloChocolate` é a subclasse.

```java
public class BoloAniversario extends BoloChocolate {

  public void adicionarCobertura() {
    // Desenho da cobertura
  }
}
```

A classe `BoloChocolate` foi definida da seguinte forma.

```java
public class BoloChocolate {

  private int cor;

  public BoloChocolate() {
    this.cor = #984502;
  }

  protected void setCor(int cor) {
    this.cor = cor;
  }

  public void preparar() {
    // Preparar o bolo
  }
}
```

Quando a classe `BoloAniversario` torna-se superclasse de `BoloChocolate`, automaticamente herda os métodos `setCor()` e `preparar()`. O atributo `cor` não é herdado, porque é `private`. Caso seja necessário sobrescrever o método `preparar()`, por exemplo, você pode invocar o método da superclasse usando a palavra chave `super`, como no exemplo a seguir.

```java
public class BoloAniversario extends BoloChocolate {

  public void preparar() {
    super.preparar();
  }
}
```

O método `preparar()` de `BoloAniversario` executa normalmente e invoca o método `preparar()` de sua superclasse.

### Exercício

1. Crie as classes `Circulo` e `SmileyFace`. A classe `Circulo` possui o método `desenhar()` que, obviamente, desenha um círculo. `SmileyFace` herda de `Circulo` e pinta o círculo de amarelo e adiciona as formas para desenhar a carinha :).

2. Crie as classes `Retangulo` e `Quadrado`. Ambas possuem o método `desenhar()`. `Retangulo` possui um construtor que recebe as coordenadas do ponto superior esquerdo do retângulo e suas dimensões. `Quadrado` reutiliza o construtor de `Retangulo`, mas recebe apenas as coordenadas do ponto superior esquerdo do quadrado e o comprimento do lado. O método `desenhar()` de `Quadrado` reutiliza o método de `Retangulo`.

3. Crie as classes `Veiculo`, `Carro`, `Aviao` e `Navio`. `Veiculo` possui o método `mover()` e o atributo `velocidade`. O valor de velocidade depende do tipo de veículo: Avião: 10 px/s, Carro: 2 px/s e Navio: 0.5 px/s.
