import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  var question;
  Question(this.question);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        question,
        style: TextStyle(
          color: Colors.black,
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
