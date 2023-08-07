/*
Grupos: Outros
Funções mistas, sem relacionamento com os outros grupos
Metacaractere   Nome              Função

  \c            Escape            Torna literal o caractere c
  |             Ou (pipe)         Ou um ou outro
  (...)         Grupo             Delimita um grupo
  \1...\9       Retrovisor        Textp casado nos grupos 1...9

  Textos:
  boa-tarde
  boa-noite
  quero-quero
  frente-verso verso-frente
  Expressão Regular:
  boa-(tarde|noite)
  (quero)-\1
  (frente)-(verso) \2-\1
*/