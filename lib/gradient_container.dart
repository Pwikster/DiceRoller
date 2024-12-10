import 'package:flutter/material.dart';
import 'package:practice/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

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
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
