import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    final name = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).maybePop('Retornou $name');
          },
          child: const Text('Details Page'),
        ),
      ),
    );
  }
}
/*
O DetailPage conhece o MaterialApp, mas não conhece o HomePage
*/