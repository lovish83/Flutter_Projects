import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// This is a private class because of using _
class _DiceRollerState extends State<DiceRoller> {
  var curentDiceRoll = 1;

  rollDice() {
    setState(() {
      curentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/dice-$curentDiceRoll.png', width: 150),
            SizedBox(height: 20,),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding: EdgeInsets.all(20),
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 28),
              ),
              child: const Text('Roll Dice'),
            ),
          ],
        );
  }
}