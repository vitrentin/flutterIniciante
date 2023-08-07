import 'dart:io';

main() {
  // Adicionar um produto
  // Imprimir os produtos
  // Sair do programa
  final products = [];
  var isRunning = true;
  while (isRunning) {
    print('\x1B[2J\x1B[0;0H');
    print(
        'Digite "add" para adicionar um produto e "imprimir", para imprimir a lista de produtos');
    var input = stdin.readLineSync();
    if (input == 'add') {
      print('\x1B[2J\x1B[0;0H');
      print('Adicione um produto');
      var product = stdin.readLineSync();
      products.add(product);
    } else if (input == 'imprimir') {
      print('\x1B[2J\x1B[0;0H');
      print('Todos os produtos cadastrados \n');
      for (var i = 0; i < products.length; i++) {
        print('product $i ${products[i]}');
      }
      stdin.readLineSync();
      
    } else {
      isRunning = false;
    }
  }
  print('\x1B[2J\x1B[0;0H');
  print('fim do programa');
}
