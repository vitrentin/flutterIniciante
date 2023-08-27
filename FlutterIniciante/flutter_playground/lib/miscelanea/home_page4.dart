import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final names = ['Vi', 'Rod', 'Gux', 'Gui'];

  // Widget _itemBuilder(BuildContext context, int index) {
  //   final name = names[index];
  //   return ListTile(
  //     title: Text(name),
  //     onTap: () async {
  //       await Navigator.of(context).pushNamed('/details', arguments: name);
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
          // width: double.infinity, // com isso o scroll pega o tamanho inteiro
          // da tela e a 'barrinha' fica no canto.
          //child: SingleChildScrollView(
          // o Scroll segue a mesma ideia dos eixos,
          // ele sabe o tamanho do eixo principal, mas não sabe o tamanho
          // do eixo cruzado, se o pai não tiver o valor, ele pega dos filhos
          // no exemplo dos quadrados, ele pega do filho (150)
          // child: Column(
          children: [
            Container(
              color: Colors.red,
              height: 150,
              width: 150,
            ),
            Container(
              color: Colors.blue,
              height: 150,
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 100, // names.length
                itemBuilder: (context, index) {
                  // final name = names[index];
                  return ListTile(
                    title: Text('item $index'), // Text(name)
                  ); // Ele vai recriando os itens novos e destruindo
                  // os itens anteriores
                  /*
                    body: ListView.separeted(
                      padding: EdgeInsets.only(bottom: 1000),
                      reverse: true // Em vez de começar por cima, começa por baixo
                      intemCount: names.length,
                      itemBuilder: _itemBuilder,
                      separatorBuilder: (BuildContext context, int index){
                       return Container(
                        height:2,
                        color: Colors.green,
                       )
                      }
                      // vai deixar os itens separatos por uma linha
                    )
                  */
                },
                // children: [
                //   for (var i = 0; i < 100; i++)
                //     Container(
                //       color: Colors.red,
                //       height: 50,
                //       width: 50,
                //       margin: const EdgeInsets.all(12),
                //     ),
                // ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.yellow,
              height: 150,
            ),
            Container(
              color: Colors.green,
              height: 150,
            ),
            Container(
              color: Colors.orange,
              height: 150,
            ),
            Container(
              color: Colors.black,
              height: 150,
            ),
            // se o tamanho dos containers ultrapassar o limite da tela,
            // irá aparecer um erro de overflow, caso não tenha um Scroll
          ]),
      //  ),
      //  ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).pushNamed('/details');
        //Navigator.of(context).pushReplacementNamed('/details');
        // faz um push e um pop
        // Se ir para a página Details e voltar para home, irá aparecer uma tela
        // preta, pois home foi excluída
        // Navigator.of(context)
        //     .pushNamedAndRemoveUntil('/details', ModalRoute.withName('/'));
        // Vai remover todas as páginas e só parar quando for / (home)
        // Navigator.of(context)
        //     .pushNamedAndRemoveUntil('/details', (route) => false);
        // todas as páginas antes de details serão excluídas
        // Navigator.of(context).popAndPushNamed('/details');
        // Navigator.of(context).popUntil(ModalRoute.withName('/'));
        // if(Navigator.of(context).canPop()){
        // Navigator.of(context).pushReplacementNamed('/details');
        // Se quando passar de home para Details, apagando home, com essa
        // verificação, não deixa voltar para home, se ela não existir
        // }
        // Navigator.of(context).maybePop();
        // ele já faz a verificação e caso possa excluir a página, já exclui
      }),
    );
  }
}
