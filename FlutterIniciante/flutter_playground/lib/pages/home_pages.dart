import 'package:flutter/material.dart';
//import 'package:flutter_playground/app_widget.dart';
//import 'package:flutter_playground/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // OBS: não existe colocar regra de negócio dentro do build,
    //só assuntos relacionados a view
    // Se o pai for destruído, os filhos também irão, se cortar uma
    // árvore, todos os galhos caem
    //final appSate = context.findAncestorStateOfType<AppWidgetState>();
    // nunca usou, mas o importante é entender a árvore de Widget
    // utiliza privado, para proteger desse tipo de acesso
    // em vez de acessar por contexto, acessar pela global:
    //final appState = appWidgetKey.currentState;
    // Objetivo da key é identificação na árvore de elementos
    return Scaffold(
      appBar: AppBar(
        title: const Text('Masterclass'),
      ),
      /*
      body: Column(children: [
        Container(
          height: 100,
          width: 100,
          color: Colors.green,
        ),
        //Se criar outro Container de outra cor, irá ficar embaixo do quadrado
        // verde, no canto superior esquerdo.
        Container(
          height: 100,
          width: 100,
          color: Colors.red,
        ),
      ])
      // ele não pegou a largura total do dispositivo, para isso é preciso fazer
      // um wrap no body, com SizeBox: ficando:
      body: SizeBox(
        width: double.infinity, // usaria o size.width (size sendo uma variável 
        //que pegou o tamanho do dispositivo pelo MediaQuery)
        child: Column(
          mainAxisAligment: MainAxisAligment.center, // irá centralizar no eixo
          // da coluna, por ser Column
          // Se nesse caso, quiser alinhar pela horizontal se utiliza o:
          // crossAxisAlignment: CrossAxisAlignment.end (alinha no canto direito)
          children: [
            Container(
              ...
            ),
          ]
        )
      )
      // porem, a forma correta, é usando o MediaQuery, pois com infinity,
      // o tamanho fica indefinido
      // colocando no começo do build:
      final mediaQuery = MediaQuery.of(context);
      final size = mediaQuery.size;
      // Método Expanded:
      expande até preencher o tamanho do eixo principal, mantendo o tamanho
      // definido do eixo cruzado
      // Deixando todos filhos como Expanded, todos irão ficar proporcionalmente
      // divididos pelo tamanho da tela, ex: 3 Containers, ficariam os 3 com a 
      // mesma altura para preencher o tamanho vertical da tela, caso o pai
      // fosse uma Coluna
      // parametro flex: tem como padrão 1, caso tenha 3 Expanded, e coloque o 
      // primeiro com o valor 2, dividiria a tela em 4 partes, ficando o primeiro
      // com duas partes

      ConstrainedBox(
        constraints: BoxConstraints(
          //max e min de altura e largura
          maxHeight: 400,
          maxWidth: 400,
        ),
        ),


      // DESAFIO: fazer 2 telas!!!
      */
      body: const Center(
        child: Icon(Icons.ac_unit),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // appState?.switchTheme();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
