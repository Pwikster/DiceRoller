import 'dart:math';
import 'package:flutter/material.dart';

// creates Random() object for reuse
final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;

// Setting currentDiceRoll for Image path
  void rollDice() {
    setState(() {
      //Uses Random() object method to produce a random number
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(
              20,
            ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 32,
            ),
          ),
          child: const Text(
            'Roll Dice',
          ),
        ),
      ],
    );
  }
}
