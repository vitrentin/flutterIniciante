import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Desafio do Botão Flutuante',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
      home: const MyHomePage(title: 'Desafio do Botão Flutuante'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var state = GeoState.square();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(widget.title),
      ),
      body: Center(
        child: AnimatedAlign(
          alignment: state.align,
          duration: const Duration(seconds: 1),
          curve: Curves.easeIn,
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: state.color,
              borderRadius: BorderRadius.circular(state.radius),
            ),
            height: state.y,
            width: state.x,
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    state = state.type == GeoType.circle
                        ? GeoState.square()
                        : GeoState.circle();
                  });
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(state.radius))),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                )),
          ),
        ),
      ),
    );
  }
}

enum GeoType { square, circle }

class GeoState {
  final double x;
  final double y;
  final double radius;
  final GeoType type;
  final Color color;
  final Alignment align;
  GeoState({
    required this.x,
    required this.y,
    required this.radius,
    required this.type,
    required this.color,
    required this.align,
  });
  factory GeoState.square() {
    return GeoState(
        x: 100,
        y: 50,
        radius: 0,
        type: GeoType.square,
        color: Colors.lightBlue,
        align: Alignment.topCenter);
  }
  factory GeoState.circle() {
    return GeoState(
        x: 50,
        y: 50,
        radius: 25,
        type: GeoType.circle,
        color: Colors.lightBlue,
        align: Alignment.bottomRight);
  }
}
