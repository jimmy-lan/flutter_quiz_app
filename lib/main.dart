import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> questions = [
      "What is your favorite color?",
      "What is your favorite animal?"
    ];

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Simple Quiz App")),
            body: Column(
              children: [
                Text("The Question"),
                ElevatedButton(onPressed: null, child: Text("Answer 1")),
                ElevatedButton(onPressed: null, child: Text("Answer 2")),
                ElevatedButton(onPressed: null, child: Text("Answer 3")),
              ],
            )
        )
    );
  }
}
