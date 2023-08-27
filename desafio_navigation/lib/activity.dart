import 'package:desafio_navigation/widgets/card_custom.dart';
import 'package:flutter/material.dart';

import 'about.dart';
import 'animations.dart';
import 'repo.dart';
import 'widgets/app_bar_custom.dart';
import 'widgets/bottom_bar_custom.dart';

class Activity extends StatelessWidget {
  const Activity({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
      ),
      home: const ActivityPage(),
      routes: <String, WidgetBuilder>{
        '/': (context) => const ActivityPage(),
        '/animations': (context) => const AnimationsPage(),
        '/repo': (context) => const RepoPage(),
        '/about': (context) => const AboutPage(),
      },
    );
  }
}

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustom(title: "Atividades"),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(color: Color(0xff121517)),
        child: const SingleChildScrollView(
          child: Column(
            children: [
              CardCustom(
                  img: "assets/images/running.png",
                  title: "Animações",
                  number: "4",
                  resume:
                      "Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos",
                  navigator: '/animations'),
              CardCustom(
                  img: "assets/images/glasses.png",
                  title: "Leitura de Mockup",
                  number: "2",
                  resume:
                      "Aplicação da técnica de leitura de mockup, contendo 2 exercícios",
                  navigator: ""),
              CardCustom(
                  img: "assets/images/pinwheel.png",
                  title: "Playground",
                  number: "3",
                  resume: "Ambiente destinado a testes e estudos em geral",
                  navigator: ""),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomBarCustom(currentTabIndex: 0),
    );
  }
}
