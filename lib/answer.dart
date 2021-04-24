import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function onPressed;

  Answer({this.answerText, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            foregroundColor: MaterialStateProperty.all(Colors.white)
        ),
        child: Text(answerText),
        onPressed: onPressed,
      ),
    );
  }
}
