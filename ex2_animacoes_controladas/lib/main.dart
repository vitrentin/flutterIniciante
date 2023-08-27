import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyScrollView',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
      home: const MyHomePage(title: 'MyScrollView'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(widget.title),
      ),
      body: Center(
        child: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                for (var i = 0; i < 50; i++) CustomExpansionTile(index: i),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomExpansionTile extends StatefulWidget {
  final int index;
  const CustomExpansionTile({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  State<CustomExpansionTile> createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late CurvedAnimation _animation;
  late Animation<double?> heightAnimation;
  late Animation<double> angleAnimation;
  late Animation<int?> expandedAnimation;

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
      duration: const Duration(milliseconds: 400),
    );

    _animation = CurvedAnimation(
      parent: controller,
      curve: Curves.linear,
      reverseCurve: Curves.linear,
    );

    heightAnimation = Tween<double?>(
      begin: 0.0,
      end: 1.0,
    ).animate(_animation);

    angleAnimation = Tween<double>(
      begin: 0,
      end: pi,
    ).animate(_animation);

    expandedAnimation = Tween(
      begin: 0,
      end: 1,
    ).animate(_animation);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    padding: const EdgeInsets.all(16),
                    backgroundColor: Colors.transparent,
                    shadowColor: const Color.fromARGB(40, 82, 82, 82)),
                onPressed: () {
                  toggle();
                  Scrollable.ensureVisible(context,
                      alignment: 0, duration: const Duration(seconds: 1));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        "My ExpansionTile ${widget.index}",
                        style: const TextStyle(
                            color: Color.fromARGB(221, 54, 54, 54),
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    Transform.rotate(
                      angle: angleAnimation.value,
                      alignment: Alignment.center,
                      child: const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Color.fromARGB(255, 138, 137, 137),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(),
                child: Align(
                  alignment: Alignment.topCenter,
                  heightFactor: heightAnimation.value,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/logo.png",
                          height: 40,
                        ),
                        const Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                          style: TextStyle(
                            color: Color.fromARGB(221, 54, 54, 54),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        });
  }
}
