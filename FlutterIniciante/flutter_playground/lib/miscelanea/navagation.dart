import 'package:flutter/material.dart';
import 'package:flutter_playground/miscelanea/details_page.dart';
import 'home_page4.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/': (context) => const HomePage(),
        '/details': (context) => const DetailsPage(),
      }, //Quando executar essa
      //função ela vai retornar um Widget2f
    );
  }
}
/*
  typedef MyFunc = void Function(String name);
  typedef JsonType = Map<String, dynamic>;
  main(){
    JsonType json = {};
    void MyFunc fn = _minhaFuncao;
    fn('vi');
    fn('Rod');
  }
  void _minhaFuncao(String name){
    print(name);
  }
*/