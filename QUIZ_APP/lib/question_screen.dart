import 'package:flutter/material.dart';
import 'package:flutter_2/answers_button...dart';
import 'package:flutter_2/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onselectanswer});
  final void Function(String answer) onselectanswer;
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
  var currentQuestionIndex = 0;
  void answerQuestion(String selectedanswer) {
    widget.onselectanswer(selectedanswer);
    setState(() {
      currentQuestionIndex = currentQuestionIndex + 1;
    });
  }

  @override
  Widget build(context) {
    final currentquestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentquestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 19, 165, 206),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            // ...currentquestion.answers.map((answer) {
            ...currentquestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                  answertext: answer,
                  onTap: () {
                    answerQuestion(answer);
                  });
            }),
            /* AnswerButton(answertext: currentquestion.answers[0], onTap: () {}),
            AnswerButton(answertext: currentquestion.answers[1], onTap: () {}),
            AnswerButton(answertext: currentquestion.answers[2], onTap: () {}),
            AnswerButton(answertext: currentquestion.answers[3], onTap: () {}), */
          ],
        ),
      ),
    );
  }
}
