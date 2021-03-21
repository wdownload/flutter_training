import 'package:flutter/material.dart';

void main() => {runApp(MyApp())};

class MyApp extends StatelessWidget {
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
            Text("Here comes the question?"),
            ElevatedButton(child: Text("Answer 1"), onPressed: null),
            ElevatedButton(child: Text("Answer 2"), onPressed: null),
            ElevatedButton(child: Text("Answer 3"), onPressed: null),
          ],
        ),
      ),
    );
  }
}
