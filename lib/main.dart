import 'package:flutter/material.dart';
import 'package:practice/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Color.fromARGB(255, 32, 32, 32),
            Color.fromARGB(255, 48, 48, 48),
          ],
        ),
      ),
    ),
  );
}
