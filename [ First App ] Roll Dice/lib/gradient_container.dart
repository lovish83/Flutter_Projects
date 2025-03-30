import 'package:flutter/material.dart';
import 'package:my_first_app/dice_roller.dart';
// import 'package:my_first_app/custom_text.dart';

final startAlignment = Alignment.topCenter;
final endAlignment = Alignment.bottomCenter;

class GradientConatiner extends StatelessWidget {
  const GradientConatiner(this.colors, {super.key});

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        // color: const Color.fromARGB(255, 184, 212, 6),
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: colors, // Define gradient colors
        ),
      ),
      child: Center(
        child: DiceRoller(), // CustomText('I am a Hacker from India. {Changed Text}')
      ),
    );
  }
}
