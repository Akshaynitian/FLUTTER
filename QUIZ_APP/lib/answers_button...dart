import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answertext, required this.onTap});
  final String answertext;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 50,
        ),
        backgroundColor: const Color.fromARGB(255, 205, 156, 11),
        foregroundColor: const Color.fromARGB(255, 3, 34, 47),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(
        answertext,
        style: const TextStyle(
          fontStyle: FontStyle.italic,
          fontSize: 20,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
