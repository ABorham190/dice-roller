import 'package:flutter/material.dart';
import 'package:dice_roll/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colorsList, {super.key});
  final List<Color> colorsList;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colorsList,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
