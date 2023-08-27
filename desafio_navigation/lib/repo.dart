import 'package:flutter/material.dart';

import 'widgets/app_bar_custom.dart';
import 'widgets/bottom_bar_custom.dart';

class RepoPage extends StatefulWidget {
  const RepoPage({super.key});

  @override
  State<RepoPage> createState() => _RepoPageState();
}

class _RepoPageState extends State<RepoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustom(title: "Repositórios"),
      body: Container(
        decoration: const BoxDecoration(color: Color(0xff121517)),
      ),
      bottomNavigationBar: const BottomBarCustom(currentTabIndex: 1),
    );
  }
}
