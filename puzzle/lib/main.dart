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

  var _score = 0;
  void _answerQuestion(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
      _score += score;
    });

    if (_questionIndex < _questions.length) {
      print("There has more question to be answered!");
    } else {
      print("The final score is $_score");
    }
  }

  void _resetQuiz() {
    setState(() {
      _score = 0;
      _questionIndex = 0;
    });
  }

  final _questions = const [
    {
      "questionText": "What\'s is your favorite color?",
      "answers": [
        {"answerText": "Blue", "score": 10},
        {"answerText": "Yellow", "score": 8},
        {"answerText": "Purple", "score": 6},
        {"answerText": "Red", "score": 4}
      ]
    },
    {
      "questionText": "What\'s  is your favorite animal?",
      "answers": [
        {"answerText": "Dog", "score": 10},
        {"answerText": "Cat", "score": 5},
        {"answerText": "Parrot", "score": 1}
      ]
    },
    {
      "questionText": "What\'s  is your favorite actor?",
      "answers": [
        {"answerText": "Chris Pat", "score": 10},
        {"answerText": "Samuel Jackson", "score": 8},
        {"answerText": "Robert De Niro", "score": 6},
        {"answerText": "Al Pacino", "score": 4}
      ]
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
              : Result(_score, _resetQuiz)),
    );
  }
}
