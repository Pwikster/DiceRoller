import 'package:flutter/material.dart';
import 'package:practice/styled_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colorTop, this.colorBottom, {super.key});

  final Color colorTop;
  final Color colorBottom;

  @override //used to ensure that we are not using any methods incorrectly.
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            colorBottom,
            colorTop,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: const Center(
        child: StyledText('Howdy Partner'),
      ),
    );
  }
}
