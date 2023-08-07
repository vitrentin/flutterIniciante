main() {
  var name1 = 'Vi';
  List names = ['Vi', 'Rod', 'Gux'];
  var names2 = [name1, 'Rod2', 'Gux2'];
  names2.add('Gui');
  print(names[1]);
  names2.remove('Rod2');
  names2.removeAt(1);  
  print(names2);
}
