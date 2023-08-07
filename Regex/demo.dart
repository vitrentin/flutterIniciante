main() {
  final email = 'Vtrentin15eu e@gmail.com';
  final isEmail = email.contains(RegExp(r'[a-zA-Z0-9.-_]+@[a-z.]+'));
  print(isEmail);
}
// Metacaracteres: . ? * ^ $ | [ ] { } ( ) \
/*
Metacaractere   Nome                Metacaracteres    Nome

  .             Ponto                 ^               Circunflexo
  []            Lista                 $               Cifrão
  [^]           Lista Negada          \b              Borda
  ?             Opcional              \               Escape
  *             Asterisco             |               Ou (Pipe)
  +             Mais                  ()              Grupo
  {}            Chaves                \1              Retrovisor

*/
