import 'package:flutter/material.dart';

import 'activity.dart';
import 'main.dart';
import 'animations.dart';
import 'about.dart';
import 'repo.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/': (context) => const MyHomePage(),
        '/activity': (context) => const ActivityPage(),
        '/repo': (context) => const RepoPage(),
        '/animations': (context) => const AnimationsPage(),
        '/about': (context) => const AboutPage(),
      }, //Quando executar essa
      //função ela vai retornar um Widget
    );
  }
}
