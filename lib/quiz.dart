import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({@required this.questions, @required this.questionIndex, @required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    var question = questions[questionIndex];

    return Container(
        child: Column(
          children: [
            Question(question["questionText"]),
            ...(question["answers"] as List<String>)
                .map((e) =>
                Answer(
                  answerText: e,
                  onPressed: answerQuestion,
                ))
          ],
        )
    );
  }

}