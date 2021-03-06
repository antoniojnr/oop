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

### Herança em Java

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

## Polimorfismo

Polimorfismo é a habilidade (em programação) de apresentar a mesma **interface** para diferentes **formas subjacentes**. Talvez seja mais fácil explicar isso utilizando conceitos do mundo físico:

Se eu pedir a três estudantes para irem ao centro, até um mercado, e comprarem o seu lanche favorito, pode ser que um me traga uma garrafa de refrigerante, outro, pão, presunto e muçarela e, outro, me traga um pacote de miojo. Cada um dos estudantes trouxe seu lanche favorito à sua maneira. Talvez um tenha ido de moto, outro tenha ido a pé e o outro tenha pego uma carona, mas todos cumpriram seu dever, que era trazer o lanche favorito. Então temos:

* **Interface:** trazer lanche favorito
* **Formas subjacentes:** preferências pessoais, meio de transporte, quantidade de dinheiro

Polimorfismo permite que essa interface seja implementada de diferentes formas, com potencialmente muitas formas diferentes, cada uma com seu propósito específico. O código que usa essa interface não deveria se preocupar sobre como se dará a implementação, somente que a interface será obedecida.

### Polimorfismo em Java

#### Classes abstratas

Uma classe abstrata não pode ser instanciada e pode ser usada ao se criar uma subclasse que herda a classe abstrata e que pode ser instanciada. A superclasse abstrata:

* Define métodos que podem ser usados pela subclasse.
* Define métodos abstratos que a subclasse deve implementar.
* Provê uma interface comum que permite que a subclasse seja possa ser intercambiada com todas as outras subclasses.

```java
abstract public class MinhaClasseAbstrata
{
    abstract public void metodoAbstrato();

    public void metodoImplementado() {
      System.out.print("metodoImplementado()");
    }

    final public void metodoFinal() {
      System.out.print("metodoFinal()");
    }
}
```

No exemplo acima, o `metodoAbstrato()` deve ser implementado pela subclasse. O `metodoImplementado()` é um método comum, que pode ser sobrescrito pelas subclasses, enquanto o `metodoFinal()` não pode ser sobrescrito, porque está marcado como `final`.

#### Interfaces

Objetos definem sua interação com o mundo externo através dos métodos que expõem. Os métodos são a interface do objeto com o mundo externo. Usemos, mais uma vez, um exemplo do mundo real: os botões na frente de sua TV são a interface entre você e os circuitos elétricos do outro lado da capa de plástico. Você pressiona o botão *Power* para ligar ou desligar a TV.

Em sua forma mais comum, uma interface é um grupo de métodos relacionados com o corpo vazio. O comportamento de uma bicicleta, se especificado como uma interface, pode ser da seguinte forma:

```java
interface Bicycle {
  void mudarMarcha(int novoValor);

  void acelerar(int incremento);

  void frear(int decremento);
}  
```

Interfaces somente possuem métodos abstratos e pode ser implementada usando a palavra-chave `implements`. Uma interface pode estender somente outra interface Java, enquanto que uma classe abstrata pode estender outra classe Java e implementar múltiplas interfaces Java. Os membros de uma interface (métodos e atributos) são públicos por padrão, enquanto classes abstratas podem ter membros da classe com visibilidade `private`, `protected`, etc.

Veja mais:
* [Interfaces](https://docs.oracle.com/javase/tutorial/java/concepts/interface.html)
* [Difference between Abstract Class and Interface in Java](https://www.geeksforgeeks.org/difference-between-abstract-class-and-interface-in-java/)

### Exercício

1. Crie a classe abstrata `Forma` e as classes `Circulo`, `Triangulo` e `Quadrado` que a implementam. A classe `Forma` possui o método abstrato `desenhar()` e `getArea()`, que as outras classes implementam.

2. Utilize as imagens do diretório [img](https://github.com/antoniojnr/oop/tree/master/projetos/img) para criar os monstros do jogo Space Invaders. Pesquise sobre a exibição de imagens em Processing. Cada um dos monstros está em uma imagem m`x`.png, onde `x` varia de 1 a 4. Cada monstro herda da classe `Monstro`, que possui os métodos `mover()`, `desenhar()` e `getValor()`. O último método retorna o valor que o jogador obtém ao derrotá-lo — este valor corresponde a `x`.

3. Defina a interface `Controlavel` que possui os métodos `subir()`, `descer()`, `esquerda()` e `direita()`. Crie duas classes diferentes, `Bola` e `Quadrado` que implementam `Controlavel`.

4. Considere o exercício **1** acima. Na classe `Forma`, crie o método `moverParaOrigem()`, que move a forma para a coordenada (0, 0). Este método deve ser `final`.

5. Baix
