import 'package:flutter/material.dart';
import 'package:flutter_1/dice_roller.dart';
//import 'package:flutter_1/styled_textx.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});
  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
        //Styled_Text(),
      ),
    );
  }
}
