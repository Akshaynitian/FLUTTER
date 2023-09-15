import 'package:flutter/material.dart';

class Styled_Text extends StatelessWidget {
  const Styled_Text({super.key});
  @override
  Widget build(context) {
    return const Text(
      'HELLO ',
      style: TextStyle(
        color: Color.fromARGB(255, 18, 207, 37),
        fontSize: 28.5,
      ),
    );
  }
}
