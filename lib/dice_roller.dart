import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentImage = 'assets/images/dice-1.png';

  void rollDice() {
    setState(() {
      currentImage = 'assets/images/dice-4.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          currentImage, // add variable for image function
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
