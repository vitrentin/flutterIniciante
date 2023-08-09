// Orientação a objetos

void main(List<String> args) {
  // Outras linguagens final person1 = new Person();
  final person1 = Person('Vinicius', 23);
  final person2 = Person('Rodrigo', 24);
  // Utilizando const Person, caso os parâ

  print(person1.age);
  print(person1 == person2); // false
  // Mesmo sendo o mesmo tipo de objeto, não quer dizer que a instância seja a mesma
  //print(person1.hashCode);
  //print(person2.hashCode); possuam hash codes diferentes, portanto não são iguais
  // Porém, mesmo um elemento como uma String, tendo hashcodes iguais, o objeto
  // pode não ser o mesmo.
  print(person1.toString());
  print(person1);
  //print(person1.runtimeType); // Person tipo do objeto
  final person3 = person1 + person2;
  print(person3.age);
}

//Palavra reservada  Nome do Tipo
class Person {
  // Começo do Escopo
  // São propriedades globais
  int age = 30;
  String name = '';
  //Person(); //Método construtor
  // Só é possível deixar a variável privada no construtor, caso seja posicional
  // Não é possível deixar diretamente privada pelo modo nomeado.
  Person(String name, int age) {
    this.age = age; // this referencia a global
    this.name = name;
  }
  // Mais utilizado:
  // Person({required this.name, required this.age});

  // para Privar algo, coloque um _ no início do nome
  // Esse privado não está se referindo ao escopo, mas sim ao arquivo inteiro
  String getName() {
    return name;
  }

  // Sobrecarga de Operadores:
  @override
  String toString() {
    return 'Person(name: $name, age: $age)';
  }

  @override
  int get hashCode => name.hashCode;

  bool operator ==(Object value) {
    if (value is Person) {
      return name == value.name;
    }
    return false;
  }

  // covariant Person no lugar de object
  // é uma garantia que é um filho de Object, portanto uma covariante de Object
  // Person é uma covariante/filho de Object, mas se vier uma coisa diferente
  // de Person, ele vai quebrar, por isso é perigoso, se não usar corretamente
  operator +(Person value) {
    final person = Person(name, age);
    person.age += value.age;
    return person;
  }
} // Final do escopo

//  Funções passam a se chamar métodos dentro de um escopo de classe
//  Variáveis passam a se chamar 'propriedades' dentro de um escopo de função.