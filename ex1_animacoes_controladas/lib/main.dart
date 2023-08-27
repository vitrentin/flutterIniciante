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

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late AnimationController controller;
  late CurvedAnimation _animation;
  late Animation<Size?> sizeAnimation;
  late Animation<Alignment> alignAnimation;
  late Animation<BorderRadius?> radiusAnimation;

  void toggle() {
    if (controller.value == 0) {
      controller.forward();
    } else {
      controller.reverse();
    }
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _animation = CurvedAnimation(
      parent: controller,
      curve: Curves.linear,
      reverseCurve: Curves.linear,
    );

    sizeAnimation = SizeTween(
      begin: const Size(100, 50),
      end: const Size(50, 50),
    ).animate(_animation);

    radiusAnimation = BorderRadiusTween(
      begin: BorderRadius.circular(0),
      end: BorderRadius.circular(50.0),
    ).animate(_animation);

    alignAnimation = AlignmentTween(
      begin: Alignment.topCenter,
      end: Alignment.bottomRight,
    ).animate(_animation);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(widget.title),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return GestureDetector(
              onTap: toggle,
              child: Align(
                alignment: alignAnimation.value,
                child: Container(
                  margin: const EdgeInsets.all(20),
                  width: sizeAnimation.value?.width,
                  height: sizeAnimation.value?.height,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: radiusAnimation.value,
                  ),
                  child: child,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
