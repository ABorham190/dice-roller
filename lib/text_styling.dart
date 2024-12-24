import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.txt, this.fontSize, {super.key});
  final txt;
  final fontSize;
  @override
  Widget build(context) {
    return Text(
      txt,
      style: TextStyle(fontSize: fontSize, color: Colors.white),
    );
  }
}
