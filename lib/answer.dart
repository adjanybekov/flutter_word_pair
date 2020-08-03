import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  var answerText;
  Function answerQuestion;

  Answer(this.answerText, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: answerQuestion,
      ),
    );
  }
}
