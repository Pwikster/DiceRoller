import 'package:flutter/material.dart';
import 'package:practice/styled_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  void rollDice() {}

  @override //used to ensure that we are not using any methods incorrectly.
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/dice-1.png',
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
          )
        ],
      )),
    );
  }
}
