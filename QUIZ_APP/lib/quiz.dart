import 'package:flutter/material.dart';
import 'package:flutter_2/data/questions.dart';
import 'package:flutter_2/question_screen.dart';
import 'start_screen.dart';
import 'result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedanswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseanswer(String answer) {
    selectedanswers.add(answer);

    if (selectedanswers.length == questions.length) {
      setState(() {
        //selectedanswers = [];
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(
        onselectanswer: chooseanswer,
      );
    }
    if (activeScreen == 'results-screen') {
      screenWidget = ResultScreen(
        choosesAnswers: selectedanswers,
      );
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 48, 0, 59),
              Color.fromARGB(255, 48, 0, 59),
              //Color.fromARGB(255, 69, 28, 110),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: screenWidget,
          /* activeScreen == 'start-screen'
              ? //ternary operator
              StartScreen(switchScreen)
              : const QuestionScreen(), */
        ),
      ),
    );
  }
}
