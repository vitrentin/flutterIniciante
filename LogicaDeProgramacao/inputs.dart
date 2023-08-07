import 'dart:io';

main() {
  print('Digite seu nome: ');
  final String? name =
      stdin.readLineSync(); // ? depois do tipo, significa que pode ser nula
  print('Meu nome é $name');
}
