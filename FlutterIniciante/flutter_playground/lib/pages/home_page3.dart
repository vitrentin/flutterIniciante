import 'package:flutter/material.dart';
//import 'package:flutter_playground/app_widget.dart';
//import 'package:flutter_playground/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation<Color> colorAnimation;
  late final Animation<double> sizeAnimation;
  late final Animation<double> sizeTextAnimation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    colorAnimation =
        Tween<Color>(begin: Colors.green.withOpacity(0.2), end: Colors.green)
            .animate(CurvedAnimation(
                parent: controller,
                curve: const Interval(0.0, 0.5, curve: Curves.ease)));
    // Animation é uma classe abstrata por isso deve utilizar a classe Tween
    // que transforma em uma animação
    sizeAnimation = Tween<double>(begin: 0, end: 300).animate(CurvedAnimation(
        parent: controller,
        curve: Curves.bounceOut,
        reverseCurve: Curves.bounceIn));
    sizeTextAnimation = Tween<double>(begin: 20, end: 30).animate(
        CurvedAnimation(
            parent: controller,
            curve: const Interval(0.7, 1, curve: Curves.ease)));

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final progressText = (controller.value * 100).floor().toString();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Masterclass'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 80,
          color: Colors.grey[300],
          child: Align(
            alignment: Alignment.centerLeft,
            child: Stack(
              children: [
                // AnimatedContainer(
                //   curve: Curves.easeInOut,
                //   height: 80,
                //   width: (progressWidth * progress),
                //   color: Colors.green,
                //   duration: const Duration(seconds: 1),
                //   alignment: Alignment.center,
                // ),
                Container(
                  height: 80,
                  width: sizeAnimation.value,
                  color: colorAnimation.value,
                  alignment: Alignment.center,
                ),
                Align(
                  child: Text(
                    progressText,
                    style: TextStyle(
                        fontSize: sizeTextAnimation.value,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        if (controller.isCompleted) {
          controller.reverse(); // voltar
        } else {
          controller.forward(); // ir para frente
        }
        // controller.repeat(); vai ficar indo de 0 a 100 repetindo
        // controller.repeat(revere: true); vai ficar indo e voltando em 100%
      }),
    );
  }
}
