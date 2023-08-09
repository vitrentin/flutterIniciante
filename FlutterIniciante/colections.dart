void main(List<String> args) {
  // generic
  final List<String> persons = ['Vinicius', 'Rodrigo', 'Gustavo'];
  // final List persons = <String>['Vinicius', 'Rodrigo', 'Gustavo'];
  final List persons2 = ['Vinicius', 'Rodrigo', 'Gustavo'];
  persons2.add('Vinicius');
  persons2.insert(0, 'Gui');
  print(persons);
  print(persons2.toSet().toList()); //set não garante ordenação
  print(persons2.where((element) => element.contains('Vinicius')));
  // firstWhere só pega o primeiro elemento que bater com o parâmetro
  // List<String> list = persons.where((element) => element.contains('o'));
  //(resolve transformando em lista) .toList() no final.
  // O método Where, retorna um Interable no final, conflitando com o tipo da lista
  // O filho sempre é igual ao pai, mas o pai nunca vai ser igual ao filho.

  // set  não é ordenado
  final persons3 = <String>{
    'Jacob',
    'Vinicius',
    'Rodrigo',
    //'Jacob', não pode ter item repetido
  };
  print(persons3);

  final personInt = persons2.map((e) => e.length).toList();
  // converte item a item de uma lista em outro tipo, nesse caso,
  // converte a lista na quantidade de letras de cada elemento da lista
  print(personInt);
  // Se tipar no final apenas com um elemento, será um Set, com 2 será um Map
  final Map<String, dynamic> pessoa = {
    'name': 'Vinicius',
    'age': 23,
    'altura': 1.79
  };
  final Map<String, dynamic> pessoa2 = {
    'name': 'Rodrigo',
    'age': 24,
    'altura': 1.84
  };
  print(pessoa);
  // O padrão atual é deixar o tipo na frente
  final pessoas = <Map<String, dynamic>>[pessoa];
  pessoas.add(pessoa2);
  print(pessoas);
  print(pessoas[0]['name']);
  for (var element in pessoas) {
    print(element['name']);
    print(element['age']);
  }
  // equatable
}
