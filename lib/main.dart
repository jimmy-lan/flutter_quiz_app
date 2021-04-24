import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/quiz.dart';
import 'package:flutter_quiz_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  static const _questions = [
    {
      "questionText": "What is your favorite color?",
      "answers": ["Black", "Red", "Green", "White"]
    },
    {
      "questionText": "What is your favorite animal?",
      "answers": ["Rabbit", "Snake", "Elephant", "Lion"]
    }
  ];

  void answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Simple Quiz App")),
            body: _questionIndex < _questions.length
                ? Quiz(
                    questions: _questions,
                    questionIndex: _questionIndex,
                    answerQuestion: answerQuestion,
                  )
                : Result(resetQuiz: resetQuiz,)));
  }
}
