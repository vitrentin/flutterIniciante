main() {
  // criar imc
  // peso / (altura * altura)
  double peso = 81.1;
  double altura = 1.79;
  double resultado = peso / (altura * altura);
  print(resultado);
  bool isFat = resultado > 25;
  print(isFat);
  bool isLean = resultado < 25;
  print(isLean);
  // bool = Verdadeiro ou Falso
  if (resultado > 25) {
    print('Você está gordo');
  } else if (resultado < 18) {
    print('Você está magro');
  } else {
    print('Peso normal');
    
  }
}
