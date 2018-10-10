# Coleções

## Apresentação

Coleções são estruturas de dados utilizadas para armazenar uma variedade de dados. Assim como uma variável do tipo `int` guarda um único inteiro, um *array* `int[]` pode guardar um determinado número de `int`s.

Veremos que *arrays* não são a única forma de guardar um número de dados, mas que também há `ArrayList`s, que suprem algumas deficiências dos *arrays*. Como o objetivo desta seção não é discutir exaustivamente as estruturas de dados em Java, veremos apenas estas duas, que servirão para os propósitos desta disciplina.

## Arrays

Um array é um agrupamento de dados do mesmo tipo. Uma variável que armazena um array pode ser declarada como outras variáveis, apenas adicionando-se `[]` após o tipo de dados, por exemplo `String[] nomes;`. Os dados no array possuem uma ordem específica e cada um possui um índice começando de 0. O tamanho de um array deve ser especificado através de um valor inteiro na sua inicialização. Arrays podem conter tipos de dados primitivos, assim como objetos de uma classe, dependendo de sua definição.

### Declaração

Para declarar um array, usa-se a sintaxe a seguir. O código abaixo declara um array de 5 `String`s. Quando os valores do array não são inicializados, todos os elementos do array são inicializados com o valor padrão. Então, um array de `int`s não inicializado teria todos os seus elementos iguais a `0`. Como o valor padrão para uma `String` não inicializada é `null`, então, no array guardado na variável `nomes`, todos os elementos são iguais a `null`.

```java
String[] nomes = new String[5];
```

Para declarar um array e inicializar os seus elementos, usamos a sintaxe a seguir. Quando se inicializa os elementos do array, não é preciso especificar sua dimensão. Aliás, não é nem sintaticamente válido especificar sua dimensão, então, nada deve ser colocado entre os `[]`.

```java
String[] nomes = new String[] {
  "João", "Maria", "José", "Ana", "Pedro"
};
```

Acessar um determinado elemento em um índice do array é simples. Usa-se a sintaxe: `nomes[0]`. Isto corresponderá ao elemento no índice `0` do array armazenado na variável `nomes` que, é a `String` de valor `"João"`. Para modificar um elemento em um índice, atribui-se normalmente um valor, como é feito com variáveis: `nomes[1] = "Sandra"`. Assim, a posição `1` do array guardará a `String` de valor `"Sandra"` e não mais `"Maria"`.

O tamanho do array é especificado na sua inicialização porque, depois disso, não pode ser mudado. Se você precisar de um array maior, é necessário copiar os elementos existentes para um array maior e, então, utilizar o espaço restante.

Para suprir essa falta do array, existe uma estrutura em Java chamada `ArrayList`.

## `ArrayList`

Um `ArrayList` é uma lista que, por baixo, utiliza um array para funcionar. É como se fosse um array que é capaz de crescer, caso seja necessário mais espaço para armazenamento. Você ainda pode usar todos os recursos de um array, como acesso aos elementos por índice.

Para declarar um `ArrayList` de `String`s vazio, faça:

```java
ArrayList<String> nomes = new ArrayList<String>();
```

### Operações sobre `ArrayList`s

#### `add(elemento)`

**Exemplo**
```java
nomes.add("Antonio");
```

Adiciona `"Antonio"` ao `ArrayList` armazenado na variável `nomes`, use o método `add()`, como no exemplo acima. O elemento sendo adicionado deve ser do mesmo tipo definido na declaração do `ArrayList`, ou de um subtipo deste.

#### `get(índice)`

**Exemplo**
```java
System.out.println(nomes.get(2));
```

Retorna o elemento armazenado no `ArrayList` no `índice` passado como parâmetro.

#### `size()`

**Exemplo**
```java
System.out.println(nomes.size());
```

Retorna o tamanho do `ArrayList` armazenado na variável `nomes`.

#### `indexOf(elemento)`

**Exemplo**
```java
System.out.println(nomes.indexOf("João"));
```

Retorna o índice de um `elemento` dentro do `ArrayList` armazenado na variável `nomes`. Caso o elemento não exista dentro do `ArrayList`, o método `indexOf()` retorna -1.

#### `remove(índice)`

**Exemplo**
```java
nomes.remove(2);
```

Remove o elemento no `índice` especificado do `ArrayList` armazenado na variável `nomes`.

#### `clear()`

**Exemplo**
```java
nomes.clear();
```

Remove todos os elementos do `ArrayList` armazenado na variável `nomes`.

#### Exercício

1. Lembra da classe `Circulo` criada na aula passada? Você vai usá-la neste exercício. Crie um array com 10 `Circulo`s e desenhe-os. Utilize o método `random()` para lhe ajudar a definir posições aleatórias para os `Circulo`s.

2. Agora, em vez de um array, crie um `ArrayList`, adicione 10 `Circulo`s e desenhe-os. Utilize o método `random()` para lhe ajudar a definir posições aleatórias para os `Circulo`s.

## Projetos relacionados a esta aula

[processing_inicio](https://github.com/antoniojnr/oop/tree/master/projetos/processing_inicio)

## Outras funções

Consulte a referência da linguagem para mais informações sobre `ArrayList`s: [https://docs.oracle.com/javase/1.5.0/docs/api/java/util/ArrayList.html](https://docs.oracle.com/javase/1.5.0/docs/api/java/util/ArrayList.html)
