import 'package:flutter/material.dart';
import 'package:love_calculator/screens/loading_screen.dart';
import 'package:love_calculator/widgets/input_field.dart';
// import 'package:love_calculator/screens/result_screen.dart';
import 'package:love_calculator/utilities/constants.dart';
import 'package:love_calculator/widgets/round_button.dart';
// import 'package:loading_indicator/loading_indicator.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  final boy = TextEditingController();
  final boyFocus = FocusNode();
  final girlFocus = FocusNode();
  final girl = TextEditingController();
  void nextScreen() {
    // extract the text from input field and then trim it so that
    // if user only writes the white spaces, app will remove that..
    String boyName = boy.text.trim();
    String girlName = girl.text.trim();
    // also see if user has put his/her full name, merge that to a single string

    boyName = boyName.replaceAll(" ", "");
    girlName = girlName.replaceAll(" ", "");

    if (boyName.isEmpty ||
        girlName.isEmpty ||
        boyName.length < 3 ||
        girlName.length < 3) {
      return;
    }
    boy.clear();
    girl.clear();
    boyFocus.unfocus();
    girlFocus.unfocus();
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Loading(boyName, girlName),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
        // height: double.infinity,
        // width: double.infinity,
        decoration: const BoxDecoration(
          gradient: kGradientDecoration,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.male, color: Colors.white54, size: 40.0),
                Text(
                  'Boy',
                  style: kTitleTextStyle,
                ),
              ],
            ),
            InputTextField(
                hintText: 'Krishna', controller: boy, focusNode: boyFocus),
            const SizedBox(height: 50.0),
            Text(
              "LOVES",
              style: TextStyle(
                color: Colors.pinkAccent,
                fontWeight: FontWeight.w900,
                shadows: [
                  Shadow(
                    color: Colors.black.withOpacity(0.5),

                    // spreadRadius: 5,
                    blurRadius: 15,
                    offset: const Offset(0, 3),
                  ),
                ],
                // fontFamily: 'Broadley',
                fontSize: 70,
              ),
            ),
            const SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.female, color: Colors.white54, size: 40.0),
                Text(
                  'Girl',
                  style: kTitleTextStyle,
                ),
              ],
            ),
            InputTextField(
                hintText: 'Radha', controller: girl, focusNode: girlFocus),
            const SizedBox(height: 50.0),
            RoundButton("Calculate", nextScreen),
          ],
        ),
      ),
    );
  }
}
