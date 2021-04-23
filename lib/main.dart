import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  List<String> questions = [
    "What is your favorite color?",
    "What is your favorite animal?"
  ];

  void answerQuestion () {
    setState(() {
      if (_questionIndex < questions.length - 1) {
        _questionIndex++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Simple Quiz App")),
            body: Column(
              children: [
                Question(questions[_questionIndex]),
                ElevatedButton(onPressed: answerQuestion, child: Text("Answer 1")),
                ElevatedButton(onPressed: answerQuestion, child: Text("Answer 2")),
                ElevatedButton(onPressed: answerQuestion, child: Text("Answer 3")),
              ],
            )
        )
    );
  }
}
