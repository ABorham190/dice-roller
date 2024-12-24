import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

var randomizerTop = Random();
var randomizerBottom = Random();

class _DiceRollerState extends State<DiceRoller> {
  var currentTopImageNum = 6;
  var currentBottomImageNum = 6;
  void rollDice() {
    setState(() {
      currentTopImageNum = randomizerTop.nextInt(6) + 1;
      currentBottomImageNum = randomizerTop.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentTopImageNum.png',
          width: 200,
        ),
        const SizedBox(
          height: 25,
        ),
        TextButton(
          onPressed: rollDice,
          child: const Text(
            "Roll Dice",
            style: TextStyle(fontSize: 28, color: Colors.white),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Image.asset(
          'assets/images/dice-$currentBottomImageNum.png',
          width: 200,
        ),
      ],
    );
  }
}
