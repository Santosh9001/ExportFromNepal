import 'package:flutter/material.dart';
import 'package:export_nepal/utils/constants.dart';

class Button extends StatelessWidget {
  final Color color;
  final String text;
  final onPress;


  Button({required this.color, required this.text, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
            child: Text(
              text,
              style: kButtonStyle,
            )),
        width: 200.0,
        height: 50.0,
        decoration: BoxDecoration(
          color: kColorPrimary,
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
