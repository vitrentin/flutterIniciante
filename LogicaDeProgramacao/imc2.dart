import 'dart:io';

main() {
  print('Digite seu nome: ');
  final String? name =
      stdin.readLineSync(); // ? depois do tipo, significa que pode ser nula
  print('Digite seu peso: ');
  final String? pesoString = stdin.readLineSync();
  print('Digite sua altura: ');
  final String? alturaString = stdin.readLineSync();
  double peso = double.parse(
      pesoString!); // Coloca se tem certeza que a String não será nula
  double altura = double.parse(alturaString!);
  double resultado = peso / (altura * altura);
  print('$name seu imc é $resultado');
}
