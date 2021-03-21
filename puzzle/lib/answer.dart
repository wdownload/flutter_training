import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerRaised;
  final String answerText;

  Answer(this.answerRaised, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.blue),
            child: Text(answerText),
            onPressed: answerRaised));
  }
}
