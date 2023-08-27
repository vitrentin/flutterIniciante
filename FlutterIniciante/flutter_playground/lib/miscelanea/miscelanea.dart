import 'package:flutter/material.dart';
import 'package:flutter_playground/pages/home_pages.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
// Scroll = Rolagem