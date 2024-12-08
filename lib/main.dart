import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 32, 32, 32),
                Color.fromARGB(255, 64, 64, 64),
              ],
            ),
          ),
          child: const Center(
            child: Text('Howdy'),
          ),
        ),
      ),
    ),
  );
}
