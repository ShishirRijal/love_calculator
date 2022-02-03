import 'package:flutter/material.dart';
import 'package:love_calculator/screens/input_screen.dart';
import 'package:love_calculator/widgets/round_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      height: double.infinity,
      width: double.infinity,
      // decoration: BoxDecoration(
      //   gradient: kGradientDecoration,
      // ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "THE",
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontFamily: 'Yellowtail',
              fontWeight: FontWeight.w700,
            ),
          ),
          const Text(
            "LOVE",
            style: TextStyle(
              color: Colors.white,
              fontSize: 80,
              fontWeight: FontWeight.w900,
            ),
          ),
          const FittedBox(
            child: Text(
              "CALCULATOR",
              style: TextStyle(
                color: Colors.white,
                // fontFamily: 'Broadley',
                fontSize: 50,
              ),
            ),
          ),
          const SizedBox(
            height: 50.0,
          ),
          RoundButton(
            "Let's Love",
            () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const InputScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
