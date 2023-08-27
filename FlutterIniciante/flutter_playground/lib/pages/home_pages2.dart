import 'package:flutter/material.dart';
//import 'package:flutter_playground/app_widget.dart';
//import 'package:flutter_playground/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var state = GeoState.square();
  @override
  Widget build(BuildContext context) {
    // final state = GeoState(
    //     squareSize: 10.0,
    //     color: Colors.red,
    //     radius: 10.0,
    //     type: GeoType.square);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Masterclass'),
      ),
      body: Center(
        child: AnimatedAlign(
          alignment: Alignment.topCenter,
          duration: const Duration(seconds: 2),
          curve: Curves.bounceOut,
          child: AnimatedContainer(
            duration: const Duration(seconds: 2),
            curve: Curves.easeInOut,
            // Se mudar o tamanho, ou a cor, demora 2s até mudar por completo
            // todas as propriedades que estiverem no Conteiner,
            // será animado, menos a Child
            decoration: BoxDecoration(
              color: state.color,
              //shape: BoxShape.circle, // Como não tem uma estrutura matemática
              // não irá ter animação
              borderRadius: BorderRadius.circular(state.radius),
            ),
            color: state.color,
            height: state.squareSize,
            width: state.squareSize,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        state = state.type == GeoType.circle
            ? GeoState.square()
            : GeoState.circle();
      }),
    );
  }
}

enum GeoType { square, circle }

class GeoState {
  final double squareSize;
  final Color color;
  final double radius;
  final GeoType type;
  GeoState({
    required this.squareSize,
    required this.color,
    required this.radius,
    required this.type,
  });
  factory GeoState.square() {
    return GeoState(
        squareSize: 200, color: Colors.red, radius: 0, type: GeoType.square);
  }
  factory GeoState.circle() {
    return GeoState(
        squareSize: 200, color: Colors.blue, radius: 100, type: GeoType.circle);
  }
}
// Animações Controladas(Explícitas)
// Animações manuais para vários estados durante a interpolação.