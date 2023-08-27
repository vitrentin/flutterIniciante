import 'package:flutter/material.dart';

import 'widgets/app_bar_custom.dart';
import 'widgets/bottom_bar_custom.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustom(title: "Sobre o dev"),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(color: Color(0xff121517)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  width: 400,
                  height: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: const Color(0xff172026),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/trentin.jpeg",
                            height: 80,
                          ),
                        ],
                      ),
                      const Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Vinícius Trentin",
                              style: TextStyle(
                                color: Color(0xffEDF4F8),
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            Text(
                              "Tenho 23 anos, moro em Poços de Caldas e faço Engenharia de Computação.",
                              style: TextStyle(
                                color: Color(0xff51565A),
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/whatsapp.png"),
                            const SizedBox(width: 24),
                            Image.asset("assets/images/git.png"),
                            const SizedBox(width: 24),
                            Image.asset("assets/images/insta.png"),
                            const SizedBox(width: 24),
                            Image.asset("assets/images/face.png"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                  padding: EdgeInsets.only(bottom: 16, left: 15, right: 15),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Tecnologias Favoritas",
                      style: TextStyle(
                        color: Color(0xffEDF4F8),
                        fontSize: 14,
                      ),
                    ),
                  )),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (var i = 0; i < 8; i++)
                      Padding(
                          padding: const EdgeInsets.only(
                              bottom: 16, left: 8, right: 8),
                          child: Row(
                            children: [
                              Container(
                                height: 100,
                                width: 94,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: const Color(0xff172026),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("assets/images/flutter.png"),
                                    const Text(
                                      "Flutter",
                                      style: TextStyle(
                                        color: Color(0xffEDF4F8),
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )),
                  ],
                ),
              ),
              const Padding(
                  padding: EdgeInsets.only(bottom: 16, left: 15, right: 15),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Habilidades e Competências",
                      style: TextStyle(
                        color: Color(0xffEDF4F8),
                        fontSize: 14,
                      ),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(bottom: 16, left: 15, right: 15),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  width: 400,
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: const Color(0xff172026),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 75,
                            child: Text(
                              "Dart/Flutter: ",
                              style: TextStyle(
                                color: Color(0xff51565A),
                                fontSize: 12,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 8,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(100)),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: FractionallySizedBox(
                                  widthFactor: 0.3,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: const Color(0xff055AA3),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const SizedBox(
                            width: 75,
                            child: Text(
                              "Java: ",
                              style: TextStyle(
                                color: Color(0xff51565A),
                                fontSize: 12,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: 255,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(100)),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: FractionallySizedBox(
                                  widthFactor: 0.65,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: const Color(0xff055AA3),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const SizedBox(
                            width: 75,
                            child: Text(
                              "JavaScript: ",
                              style: TextStyle(
                                color: Color(0xff51565A),
                                fontSize: 12,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: 255,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(100)),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: FractionallySizedBox(
                                  widthFactor: 0.5,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: const Color(0xff055AA3),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const SizedBox(
                            width: 75,
                            child: Text(
                              "HTML: ",
                              style: TextStyle(
                                color: Color(0xff51565A),
                                fontSize: 12,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: 255,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(100)),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: FractionallySizedBox(
                                  widthFactor: 0.9,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: const Color(0xff055AA3),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const SizedBox(
                            width: 75,
                            child: Text(
                              "CSS: ",
                              style: TextStyle(
                                color: Color(0xff51565A),
                                fontSize: 12,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Container(
                              height: 8,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(100)),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: FractionallySizedBox(
                                  widthFactor: 0.6,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: const Color(0xff055AA3),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomBarCustom(currentTabIndex: 2),
    );
  }
}
