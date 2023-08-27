import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Desafio1',
      home: MyHomePage(title: 'Desafio1'),
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
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 400),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 77, 85, 158),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          width: 50,
                          height: 50,
                        ),
                        const SizedBox(height: 4),
                        Container(
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 77, 85, 158),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(100)),
                          ),
                          width: 50,
                          height: 50,
                        ),
                      ],
                    ),
                    const SizedBox(width: 4),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 77, 85, 158),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(100),
                            bottomLeft: Radius.circular(100)),
                      ),
                      width: 50,
                      height: 104,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Get your Money',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    backgroundColor: Colors.black,
                  ),
                ),
                const Text(
                  'Under Control',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Manage your expenses.',
                  style: TextStyle(
                    color: Color.fromARGB(255, 129, 126, 126),
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.black,
                  ),
                ),
                // const Padding(
                //   padding: EdgeInsets.only(top: 10),
                const Text(
                  'Seamlessly',
                  style: TextStyle(
                    color: Color.fromARGB(255, 129, 126, 126),
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 77, 85, 158),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Sign Up With Email ID",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          SizedBox(width: 4),
                          Text(
                            "Sign Up With Google",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      )),
                ),
                const SizedBox(height: 30),
                Text.rich(
                  TextSpan(
                    text: "Already have an account? ",
                    style: const TextStyle(
                      color: Color.fromARGB(255, 156, 156, 156),
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      WidgetSpan(
                        child: InkWell(
                          onTap: () {},
                          highlightColor: Colors.transparent,
                          splashFactory: NoSplash.splashFactory,
                          child: Ink(
                            child: const Text(
                              "Sign In",
                              style: TextStyle(
                                color: Color.fromARGB(255, 156, 156, 156),
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
