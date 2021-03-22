import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _totalscore;
  final Function _resetHandler;

  Result(this._totalscore, this._resetHandler);

  String get resultText {
    var resultTextHelper;

    if (_totalscore <= 12) {
      resultTextHelper = "Not bad, good for a rookie !";
    } else if (_totalscore <= 18) {
      resultTextHelper = "Getting charm, oh yeah!";
    } else if (_totalscore <= 25) {
      resultTextHelper = "Very good, close to the sky !";
    } else {
      resultTextHelper = "You nailed it!";
    }

    return resultTextHelper;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Text(
            resultText,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        TextButton(onPressed: _resetHandler, child: Text("reset quizz"))
      ],
    );
  }
}
