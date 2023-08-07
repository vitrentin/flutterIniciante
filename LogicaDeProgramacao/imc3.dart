import 'dart:io';

main() {
  final String name = pegarNome();
  final double peso = pegarPeso();
  final double altura = pegarAltura();

  double resultado = calcularImc(altura: altura, peso: peso);
  print('$name seu imc é $resultado');
}

String pegarNome() {
  print('Digite seu nome: ');
  final String? name =
      stdin.readLineSync(); // ? depois do tipo, significa que pode ser nula
  if (name == null) {
    return 'Anônimo';
  } else {
    return name;
  }
}

double pegarPeso() {
  print('Digite seu peso: ');
  final String? pesoString = stdin.readLineSync();
  if (pesoString == null) {
    return 0;
  } else {
    double peso = double.parse(
        pesoString); // Coloca se tem certeza que a String não será nula
    return peso;
  }
}

double pegarAltura() {
  print('Digite sua altura: ');
  final String? alturaString = stdin.readLineSync();
  if (alturaString == null) {
    return 0;
  } else {
    return double.parse(alturaString);
  }
}

// double calcularImc(double peso, double altura) {
//   return peso / (altura * altura);
// }
double calcularImc({required double peso, double altura = 1}) {
  return peso / (altura * altura);
}
