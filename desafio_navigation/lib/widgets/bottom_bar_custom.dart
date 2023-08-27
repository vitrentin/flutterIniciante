// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BottomBarCustom extends StatelessWidget {
  final int currentTabIndex;
  const BottomBarCustom({
    Key? key,
    required this.currentTabIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentTabIndex,
      backgroundColor: const Color(0xff121517),
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.white,
      selectedFontSize: 16,
      onTap: (value) {
        if (value == currentTabIndex) return;
        switch (value) {
          case 0:
            Navigator.of(context).pushReplacementNamed('/activity');
          case 1:
            Navigator.of(context).pushReplacementNamed('/repo');
          case 2:
            Navigator.of(context).pushReplacementNamed('/about');
        }
      },
      items: [
        BottomNavigationBarItem(
          icon: Image.asset("assets/images/activity.png"),
          label: "Atividades",
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/images/github.png",
          ),
          label: "Repositórios",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Sobre o dev",
        ),
      ],
    );
  }
}
