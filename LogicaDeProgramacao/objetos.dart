man() {
  final person = Person(name: 'Vinicius', altura: 1.79, peso: 82);
  print(person.calculaImc());
  final jorge = Person(name: 'jorge', altura: 1.59, peso: 52);
  print(jorge.calculaImc());
  final medico = Medico(altura: 1.77, peso: 70, name: 'Enzo', crm: 5253325232);
  print(medico.calculaImc());
  
}

class Medico extends Person {
  final int crm;

  Medico({
    required this.crm,
    required String name,
    required double altura,
    required double peso,
  }) : super(name: name, altura: altura, peso: peso);
}

class Person {
  final String name;
  final double altura;
  final double peso;

  Person({required this.name, required this.altura, required this.peso});
  double calculaImc() {
    return peso / (altura * altura);
  }
}
