/*
Grupos: Quantificadores
  Servem para representar o número de repetições de um caractere
Metacaractere   Nome              Função

  ?             Opcional          Um caractere qualquer
  *             Asterisco         Zero, ou mais
  +             Mais              Um, ou mais
  {n,m}         Chaves            De n até m

Textos:
fala
falar
fala!
fala?
32523
334
2343432
43443a
123.321.123-13
Expressão Regular:
fala[r!?]?
[0-9]+[A-Za-z]*
[0-9]{3}\.[0-9]{3}\.[0-9]{3}-[0-9]{2}
*/