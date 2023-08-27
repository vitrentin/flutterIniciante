void main(List<String> args) {
  A a = B(); // O tipo A recebe a instancia do tipo B
  // Polimorfismo uma classe poder ter várias formas, através da Herança
  a.printName();
  execPrint(A());
  execPrint(B());
  execPrintB(B());
  execIPrint(A());
  execIPrint(C());
  execIPrint(B()); // A é filho da classe abstrata e B é filho de A
  // execPrintB(A()); // Argumento do tipo A não pode ter assimilado ao tipo B
  // Os filhos não tem correlação nenhuma com os pais

  // Não tem como instanciar a classe Abstrata, serve para representar uma
  // tipagem em comum
}

void execPrint(A a) {
  a.printName();
}

void execPrintB(B b) {
  b.printName();
}

void execIPrint(IPrint i) {
  i.printName();
}

abstract class IPrint {
  void printName(); // Todos que implementarem/extenderem terão que implementar
  // esse método
}

class A implements IPrint {
  // Classe concreta 'normal'
  @override
  void printName() {
    // String? name programação Orientada a Flag, sempre pode
    // dar problema de interpretação...
    print('Orlando');
  }
}

class B extends A { // Extends pode herdar tanto de uma classe concreta,
// quanto de uma classe abstrata
  @override
  void printName() {
    print('Arthur');
  }
}

class C implements IPrint {
  // Classe A e C tem um pai em comum
  // Com implements, mesmo que na classe abstrata tenha uma implementação
  // irá ignorar e considerar como um contrato, uma assinatura de método,
  // terá que implementar o método do 0, mesmo já havendo uma implementação
  @override
  void printName() {
    print('Jorge');
  }
}
// Aplicação Prática: concede proteção ao seu código de packages externos
// de implementações externas