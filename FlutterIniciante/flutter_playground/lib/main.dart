import 'package:flutter/material.dart';

import 'package:flutter_playground/animations/animacoes.dart';

//final appWidgetKey = GlobalKey<AppWidgetState>();
// Ganha acesso ao estado, sem precisar de fato, ter que deixar público
// O acesso sem precisar buscar na árvore inteira

void main(List<String> args) {
  runApp(const AppWidget(
      //key: appWidgetKey,
      ));
}
/*
class AppWidget extends StatelessWidget {
  const AppWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      // return MaterialApp(
      // home: Scaffold(
      // appBar: (
      // title: const Text('Masterclass'),
      // ), //AppBar
      // ), //Scaffold
      // ); // MaterialApp
      // MaterialApp, só usa uma vez esse Widget no começo
      // Scaffold, facilita a criação do App em si
      // Ctrl + space dá uma mini documentação
      // Um Widget por padrão ele não é mutável, mas um State sim
      // setState muda o estado, um refresh
      // setState chama o _element!.markNeedsBuild() para atualizar a tela
      // extends StatelessWidget X StatefulWidget, com o ful que é possível
      // fazer o refresh corretamente
      child: Container(
        color: Colors.red,
        width: 200,
        height: 200,
        child: Align(
          alignment:
              Alignment.center, // Quadrado menor azul no meio do vermelho
          child: Container(
            // para parar de herdar do pai, precisa transformar em
            // um component element, usando Widgets de Múltiplos filhos, ou
            // Widgets de alinhamento
            color: Colors.blue, // Quadrado irá ficar azul
            width: 100, // Por mais que esteja 100, irá continuar como 200
            height: 100, // Por estar dentro do Pai, caso o tamanho for, maior
            // ele fica do tamanho do Pai.

            // Pesquisar Flutter Widget Catalog
          ),
        ),
      ),
    );
  }
}
class AppWidget extends Widget {
  @override
  Element createElement() {
    return AppElement(this); // this -> AppWidget
    // Element implementa um BuildContext e um DiagnosticableTree
  }
}

class AppElement extends ComponentElement {
  AppElement(super.widget); // = AppElement(Widget child): super(child)

  @override
  Widget build() {
    return Container(
      alignment: Alignment.center,
      child: const Text(
        'Masterclass 5',
        textDirection: TextDirection.ltr,
      ),
    );
  }
}


class _HomePageState extends State<HomePage>{

  @override 
  void initState{
    super.initState();
    //resto do código em baixo
  }

  @override
  void dispose(){
    //comentário acima do super
    super.dispose();
  }

  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
    // toda vez que um pai atualiza, se um pai der setState, irá chamar
    o did CHangeDependencies, que irá verificar se o filho também deve atualizar,
    colocando condições
  }
}

class ControllerInherited extends InheritedWidget{
  const ControllerInherited({required super.child, super.key})
  @override 
  bool updateShouldNotify(covariant InheritedWidget oldWidget){
    return false
  }
}

class Controller{
  int counter = 0;

  void increment(){
    counter++;
  }
}

Por enquanto usar 
final controller = Controller();
*/