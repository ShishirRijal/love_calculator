import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  // const InputTextField(this.hintText, this.controller);
  final String hintText;
  final TextEditingController controller;
  final FocusNode focusNode;

  const InputTextField(
      {Key? key,
      required this.hintText,
      required this.controller,
      required this.focusNode})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      width: 300.0,
      // height: 55.0,
      child: TextField(
        style: const TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          fillColor: const Color(0XFFDEA8D1),
          filled: true,
          focusColor: const Color(0XFFE9CBEA),
          hintText: "Eg: $hintText",
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.pinkAccent,
              width: 0,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.pink,
              width: 1.5,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
        ),
        controller: controller,
        focusNode: focusNode,
      ),
    );
  }
}
