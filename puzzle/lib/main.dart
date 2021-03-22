import 'package:flutter/material.dart';
import 'package:puzzle/answer.dart';
import 'package:puzzle/question.dart';
import 'package:puzzle/quiz.dart';
import 'package:puzzle/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  final _questions = [
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
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                )
              : Result()),
    );
  }
}
