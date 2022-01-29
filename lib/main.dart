import 'package:flutter/material.dart';
import 'package:love_calculator/screens/welcome_screen.dart';
import 'package:love_calculator/utilities/constants.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Container(
          decoration: const BoxDecoration(
            gradient: kGradientDecoration,
          ),
          child: const Scaffold(
            backgroundColor: Colors.transparent,
            body: WelcomeScreen(),
          )),
    );
  }
}
