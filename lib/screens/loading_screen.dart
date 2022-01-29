import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:love_calculator/screens/input_screen.dart';
import 'package:love_calculator/screens/result_screen.dart';
import 'package:love_calculator/utilities/constants.dart';

class Loading extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const Loading(this.boy, this.girl);
  final String girl;
  final String boy;

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    Timer(const Duration(milliseconds: 1500), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => ResultScreen(widget.boy, widget.girl)));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: kGradientDecoration,
          ),
          height: screen.height,
          width: screen.width,
          child: Center(
            child: Container(
              height: screen.height * 0.6,
              width: screen.width * 0.6,
              child: const Center(
                child: LoadingIndicator(
                  indicatorType: Indicator.ballRotateChase,
                  colors: [
                    Colors.pink,
                    Colors.red,
                    Colors.deepOrange,
                    Colors.white,
                    Colors.greenAccent,
                    Colors.purple,
                    Colors.blue,
                    Colors.blueGrey,
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
