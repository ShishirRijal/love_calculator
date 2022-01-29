// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:love_calculator/screens/input_screen.dart';
import 'package:love_calculator/utilities/constants.dart';
import 'package:love_calculator/widgets/round_button.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.boy, this.girl);
  final String boy;
  final String girl;

  // function to calculate love
  int calculateLove(String boy, String girl) {
    boy = boy.trim();
    girl = girl.trim();
    String string = (boy + 'loves' + girl).toLowerCase();
    String temp = "";
    for (int i = 0; i < string.length; i++) {
      if (string[i] == ".") continue;
      int tempCount = count(string[i], string);
      temp += tempCount.toString();
      string = string.replaceAll(string[i], ".");
    }

    while (temp.length > 2) {
      int length = temp.length;
      String temp2 = "";
      for (int i = 0; i < (temp.length / 2); i++) {
        int sum = 0;
        if (i == length - 1 - i) {
          sum = int.parse(temp[i]);
        } else {
          sum = int.parse(temp[i]) + int.parse(temp[length - 1 - i]);
        }
        temp2 += sum.toString();
      }
      temp = temp2;
    }
    int result = int.parse(temp);
    return result;
  }

  int count(String char, String string) {
    int result = 0;
    for (int i = 0; i < string.length; i++) {
      if (char == string[i]) {
        result++;
      }
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: kGradientDecoration,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(boy, style: kResultTextStyle),
            const Icon(Icons.favorite, color: Colors.white, size: 40),
            Text(
              girl,
              style: kResultTextStyle,
            ),
            const SizedBox(height: 50),
            Text(calculateLove(boy, girl).toString() + '%',
                style: kResultTextStyle),
            const SizedBox(height: 50.0),
            RoundButton('Re-Calculate', () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const InputScreen();
              }));
            })
          ],
        ),
      ),
    );
  }
}
