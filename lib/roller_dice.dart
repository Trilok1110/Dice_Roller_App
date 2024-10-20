import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class RollerDice extends StatefulWidget {
  const RollerDice({super.key});
  @override
  State<RollerDice> createState() {
    return _RollerDiceState();
  }
}

class _RollerDiceState extends State<RollerDice> {
  var currentDiceRoll = 2;
  void rollDise() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        'gitg/images/dice-$currentDiceRoll.png',
        width: 200.0,
      ),
      const Padding(
        padding: EdgeInsets.only(top: 20),
      ),
      TextButton(
        onPressed: rollDise,
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          textStyle: const TextStyle(fontSize: 28),
        ),
        child: const Text("ROLL DICE"),
      ),
    ]);
  }
}
