// ignore_for_file: public_member_api_docs, sort_constructors_first
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            for (var i = 0; i < 50; i++) CustomExpansionTile(index: i),
            // for (var i = 0; i < 50; i++)
            //   AnimatedAlign(
            //     alignment: Alignment.topCenter,
            //     heightFactor: 1,
            //     duration: const Duration(seconds: 1),
            //     child: Builder(builder: (context) {
            //       return ExpansionTile(
            //         onExpansionChanged: (value) {
            //           Scrollable.ensureVisible(
            //             context,
            //             alignment: 0,
            //             duration: const Duration(seconds: 1),
            //           );
            //         },
            //         key: ValueKey("Expansion$i"),
            //         title: Text('My ExpansionTile $i'),
            //         children: <Widget>[
            //           Image.asset(
            //             "assets/images/logo.png",
            //             height: 40,
            //           ),
            //           const ListTile(
            //               title: Text(
            //                   "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")),
            //         ],
            //       );
            //     }),
            //   ),
          ],
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

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  double turns = 0.0;
  double heightFactor = 0;
  Color color = const Color.fromARGB(221, 54, 54, 54);
  bool isExpanded = false;
  void _changeRotation() {
    setState(() {
      heightFactor = heightFactor == 0 ? 1 : 0;
      color = color == const Color.fromARGB(221, 54, 54, 54)
          ? const Color.fromARGB(255, 10, 156, 149)
          : const Color.fromARGB(221, 54, 54, 54);
      turns += 1.0 / 2.0;
      isExpanded = !isExpanded;
      if (isExpanded) {
        Scrollable.ensureVisible(
          context,
          alignment: 0,
          duration: const Duration(seconds: 1),
        );
      }

      if (turns > 0.5) turns = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              padding: const EdgeInsets.all(16),
              backgroundColor: Colors.transparent,
              shadowColor: const Color.fromARGB(40, 82, 82, 82)),
          onPressed: () {
            _changeRotation();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  "My ExpansionTile ${widget.index}",
                  style: TextStyle(
                      color: color,
                      fontSize: 16,
                      fontWeight: FontWeight.normal),
                ),
              ),
              AnimatedRotation(
                turns: turns,
                duration: const Duration(milliseconds: 400),
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
          child: AnimatedAlign(
            alignment: Alignment.topCenter,
            duration: const Duration(milliseconds: 400),
            heightFactor: heightFactor,
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
      ],
    );
  }
}
