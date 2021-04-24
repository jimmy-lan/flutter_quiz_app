import 'package:flutter/material.dart';

import 'answer.dart';

class Result extends StatelessWidget {
  final Function resetQuiz;
  final int totalScore;

  Result({this.resetQuiz, this.totalScore});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
                child: Text(
              "You did it!",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            )),
            Center(
              child: Text("Total score: " + totalScore.toString()),
            ),
            Answer(
              answerText: "Try Again",
              onPressed: resetQuiz,
            )
          ],
        ));
  }
}
