import 'package:flutter/material.dart';
import 'package:flutter_playground/pages/home_pages2.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => AppWidgetState();
}

class AppWidgetState extends State<AppWidget> {
  ThemeMode themeMode = ThemeMode.light;
  switchTheme() {
    setState(() {
      themeMode =
          themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
    // =
    /*
    if(themeModed == ThemeMode.light){
      themeMode = ThemeMode.dark;
    } else {
      themeMode = ThemeMode.light;
    }
    */ //Acostumar mais com ternário!
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Aprender as propriedades do MaterialApp testando no playground
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: const HomePage(),
    );
  }
}
