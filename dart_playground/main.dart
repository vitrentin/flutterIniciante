/*
void main(List<String> args) {
  print('Hello World');
  var numero = 1; // inferencia de tipo, atribui o inteiro de valor 1 a variavel
  var name = 'Vinicius';
  print(name.runes); // runes é a representação das Strings em números
  print(String.fromCharCode(86));
  // Anatomia da Declaração de Variável
  // Tipo   Nome Sinal de Atribuição    Valor
  String nome_da_variavel = 'Masterclass'; //; final da instrução

  var name2 = getFullName(name: 'Vinicius', lastName: 'Trentin');

  //Função anonima, pois a função não tem nome
  execPrint(() {});

  // Palavras reservadas: final const var static late
  late final String name3;
  name3 = 'joao';
  name3 = 'jao';

  2
}

// Tipo do retorno Nome Inputs(Argumentos)  Começo do escopo
String getFullName(String name, [String lastName = '']) {
  return '$name $lastName'; //retorno   [] parametro opcional
} // Final do escopo

String teste() {
  {
    String fullName = 'oi tudo bem?';
  }
  return fullName;
}

void execPrint(void Function() fn) {
  fn();
  fn();
  fn();
}
*/