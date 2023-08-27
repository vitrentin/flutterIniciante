import 'dart:ui';

import 'package:desafio_navigation/about.dart';
import 'package:flutter/material.dart';

import 'activity.dart';
import 'animations.dart';
import 'repo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
      ),
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),
      home: const MyHomePage(),
      routes: <String, WidgetBuilder>{
        '/activity': (context) => const ActivityPage(),
        '/animations': (context) => const AnimationsPage(),
        '/repo': (context) => const RepoPage(),
        '/about': (contect) => const AboutPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 4),
          width: double.infinity,
          decoration: const BoxDecoration(color: Colors.black),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              backgroundColor: Colors.transparent,
              elevation: 0,
              shadowColor: Colors.transparent,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('/activity');
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "assets/images/logo.png",
                  height: 80,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
