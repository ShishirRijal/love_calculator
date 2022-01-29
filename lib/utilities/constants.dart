import 'package:flutter/material.dart';

const kGradientDecoration = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0XFF845ED8),
    Color(0XFFBB416C),
    Color(0XFFAE478A),
    Color(0XFF845ED8),
  ],
  stops: [0.05, 0.4, 0.6, 1],
);

const kInputFieldDecoration = InputDecoration(
  fillColor: Color(0XFFDEA8D1),
  focusColor: Color(0XFFE9CBEA),
  hintText: "Eg: Shishir",
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(12),
    ),
  ),
);

const kResultTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 60,
  fontFamily: 'Cursive',
);

const kTitleTextStyle = TextStyle(
  color: Colors.white54,
  fontSize: 50,
  fontFamily: 'Broadley',
  fontWeight: FontWeight.bold,
);
