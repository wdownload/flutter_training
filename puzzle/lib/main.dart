import 'package:flutter/material.dart';

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
    "What is your favorite color?",
    "What is your favorite animal?"
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
            Text(questions[questionIndex]),
            ElevatedButton(child: Text("Answer 1"), onPressed: answerQuestion),
            ElevatedButton(
                child: Text("Answer 2"),
                onPressed: () => print("Answered 2 given")),
            ElevatedButton(child: Text("Answer 3"), onPressed: answerQuestion),
          ],
        ),
      ),
    );
  }
}
