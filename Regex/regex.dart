main() {
  final email = 'vtrentin15@gmail.com';
  final regex = RegExp(r'[a-z0-9.-_]+@[a-z0-9.-_]+');
  final isEmail = regex.hasMatch(email);
  print(isEmail);
}
