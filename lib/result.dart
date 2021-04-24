import 'package:flutter/material.dart';

import 'answer.dart';

class Result extends StatelessWidget {
  final Function resetQuiz;

  Result({this.resetQuiz});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Text("You did it!")),
        Answer(
          answerText: "Try Again",
          onPressed: resetQuiz,
        )
      ],
    );
  }

}