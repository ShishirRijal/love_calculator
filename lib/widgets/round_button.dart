import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const RoundButton(this.text, this.onChanged);
  final String text;
  final VoidCallback onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30.0),
      // width: double.infinity,
      width: 250.0,
      height: 60.0,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            )),
          ),
          backgroundColor: MaterialStateProperty.all(Colors.pink[400]),
        ),
        onPressed: onChanged,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 35,
            fontFamily: 'Cursive',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
