import 'package:flutter/material.dart';

class AnimationBottomCustom extends StatelessWidget {
  final int index;
  const AnimationBottomCustom({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(16),
          backgroundColor: const Color(0xff172026),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Text('$index'),
            ),
            Text(
              "Exercício $index",
              style: const TextStyle(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
