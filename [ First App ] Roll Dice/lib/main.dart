import 'package:flutter/material.dart';
import 'package:my_first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientConatiner(
              [
                  Color.fromARGB(255, 0, 16, 74), 
                  Color.fromARGB(255, 137, 0, 210),
                  Color.fromARGB(255, 3, 0, 80)
              ]
          ),
      ),
    ),
  );
}

