main() {
  final regex = RegExp(r'[^\d-]');
  print('Seu código é 123-323'.replaceAll(regex, ''));
  print('code is 123-232'.replaceAll(regex, ''));
  print('123-232. Este es tu código de acceso'.replaceAll(regex, ''));
  final groupRegex = RegExp(r'\d{3}-\d{3}');
  final match = groupRegex.firstMatch('Seu código é 123-323');
  print(match?.group(1));
}
