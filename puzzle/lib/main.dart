import 'package:flutter/material.dart';
import 'package:puzzle/answer.dart';
import 'package:puzzle/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  final questions = [
    {
      "questionText": "What\'s is your favorite color?",
      "answers": ["Blue", "Yellow", "Purple", "Red"]
    },
    {
      "questionText": "What\'s  is your favorite animal?",
      "answers": ["Dog", "Cat", "Parrot"]
    },
    {
      "questionText": "What\'s  is your favorite actor?",
      "answers": ["Chris Pat", "Samuel Jackson", "Robert De Niro", "Al Pacino"]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Puzzle Lesson",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Simple Puzzle"),
        ),
        body: Column(
          children: [
            Question(questions[questionIndex]["questionText"]),
            ...((questions[questionIndex]["answers"] as List<String>)
                .map((answer) => Answer(answerQuestion, answer))).toList()
          ],
        ),
      ),
    );
  }
}
