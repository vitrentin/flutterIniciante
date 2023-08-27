import 'package:desafio_navigation/widgets/Animation_bar_custom.dart';
import 'package:desafio_navigation/widgets/animations_bottom_custom.dart';
import 'package:flutter/material.dart';

class AnimationsPage extends StatefulWidget {
  const AnimationsPage({super.key});

  @override
  State<AnimationsPage> createState() => _AnimationsPageState();
}

class _AnimationsPageState extends State<AnimationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AnimationBarCustom(),
      body: Container(
        padding: const EdgeInsets.all(15),
        width: double.infinity,
        decoration: const BoxDecoration(color: Color(0xff121517)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (var i = 0; i < 4; i++) AnimationBottomCustom(index: i + 1)
          ],
        ),
      ),
    );
  }
}
