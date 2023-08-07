/*
Classe POSIX
  Grupos definidos por tipo

Classe POSIX    Similar         Significa
[:upper:]       [A-Z]           Letras maiúsculas    
[:lowe:]        [a-z]           Letras minúsculas
[:alpha:]       [A-Za-z]        Maiúsculas/minúsculas
[:alnum:]       [A-Za-z0-9]     Letras e números

[:digit:]       [0-9]           Números
[:xdigit:]      [0-9A-Fa-f]     Números hexadecimais
[:punct:]       [.,!?:...]      Sinais de pontuação
[:blanck:]      [ \t]           Espaço e tab
[:space:]       [\t\n\r\f\v]    Caracteres brancos

b-|       Equivalente POSIX     Significa
\d        [[:digit:]]           Dígito
\D        [^[:digit:]]          Não-dígito
\a        [[:alpha:]]           Alfabeto
\A        [^[:alpha:]]          Não-alfabeto
\w        [[:alnum:]]           Palavra
\W        [^[:alnum:]]          Não-palavra
\s        [[:space:]]           Branco
\S        [^[:space:]]          Não-branco

Textos:
123.321.123-13

Expressão Regular:
\d{3}\.\d{3}\.\d{3}-\d{2}

*/