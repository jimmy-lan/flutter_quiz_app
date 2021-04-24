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
  int _totalScores = 0;

  static const _questions = [
    {
      "questionText": "What is your favorite color?",
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 6},
        {"text": "Green", "score": 3},
        {"text": "White", "score": 1}
      ]
    },
    {
      "questionText": "What is your favorite animal?",
      "answers": [
        {"text": "Rabbit", "score": 5},
        {"text": "Snake", "score": 10},
        {"text": "Elephant", "score": 12},
        {"text": "Lion", "score": 8}
      ]
    }
  ];

  void answerQuestion(int score) {
    setState(() {
      _questionIndex++;
      _totalScores += score;
    });
  }

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScores = 0;
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
                : Result(
                    totalScore: _totalScores,
                    resetQuiz: resetQuiz,
                  )));
  }
}
