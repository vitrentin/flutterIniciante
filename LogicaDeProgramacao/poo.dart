void main() {
  Carro carro = Carro(qtdPortas: 4, nome: 'Corssa', marca: 'GM');
  carro.qtdPortas = 2;
  print(carro.qtdPortas);
  print(carro.nomeCompleto());
  final gol = Carro(qtdPortas: 2, nome: 'Gol', marca: 'Volksvagen');
  print(gol.nomeCompleto());
}

class Carro {
  late int qtdPortas; // int qtdPortas = 4;
  late String nome; // String nome = 'K';
  late String marca; // String marca = 'Ford';

  Carro({required int qtdPortas, required String nome, required String marca}) {
    this.qtdPortas = qtdPortas; // Variáveis globais são referenciadas por this
    this.nome = nome;
    this.marca = marca;
  }

  String nomeCompleto() {
    return '$marca $nome';
  }
}
