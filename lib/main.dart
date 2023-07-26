import 'package:aaron_1/screens/bmi_screen.dart';
import 'package:flutter/material.dart';
import 'screens/intro_todscreen.dart';

void main() {
  runApp(TodApp());
}

class TodApp extends StatelessWidget {
  const TodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.yellow),
        routes: {
          '/': (context) => TodIntro(),
          '/bmi': (context) => BmiScreen(),
        },
        );
  }
}
