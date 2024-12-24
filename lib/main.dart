import 'package:flutter/material.dart';
import 'package:dice_roll/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: GradientContainer(
            [
              Color.fromARGB(255, 16, 3, 85),
              Color.fromARGB(255, 39, 7, 202),
            ],
          ),
        ),
      ),
    ),
  );
}
