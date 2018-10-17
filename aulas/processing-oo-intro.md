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

## Polimorfismo

A palavra **polimorfismo** vem do grego e significa "múltiplas formas". Esta palavra é utilizada em diversos contextos para descrever situações em que algo acontecem de múltiplas formas. Em computação, descreve o conceito de objetos de diferentes tipos que podem ser acessados através da mesma interface.

The word polymorphism is used in various contexts and describes situations in which something occurs in several different forms. In computer science, it describes the concept that objects of different types can be accessed through the same interface. Each type can provide its own, independent implementation of this interface. It is one of the core concepts of object-oriented programming (OOP).


So polymorphism is the ability (in programming) to present the same interface for differing underlying forms (data types).

For example, in many languages, integers and floats are implicitly polymorphic since you can add, subtract, multiply and so on, irrespective of the fact that the types are different. They're rarely considered as objects in the usual term.

But, in that same way, a class like BigDecimal or Rational or Imaginary can also provide those operations, even though they operate on different data types.

The classic example is the Shape class and all the classes that can inherit from it (square, circle, dodecahedron, irregular polygon, splat and so on).

With polymorphism, each of these classes will have different underlying data. A point shape needs only two co-ordinates (assuming it's in a two-dimensional space of course). A circle needs a center and radius. A square or rectangle needs two co-ordinates for the top left and bottom right corners and (possibly) a rotation. An irregular polygon needs a series of lines.

By making the class responsible for its code as well as its data, you can achieve polymorphism. In this example, every class would have its own Draw() function and the client code could simply do:


## Outras funções

Consulte a referência da linguagem para mais informações: [https://processing.org/reference/](https://processing.org/reference/)
