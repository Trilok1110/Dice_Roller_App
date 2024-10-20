import 'package:dice_roller/roller_dice.dart';
import 'package:flutter/material.dart';
//import 'package:dice_roller/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});
  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: startAlignment, end: endAlignment, colors: colors),
      ),
      child: const Center(
        child: RollerDice(),
      ),
    );
  }
}
