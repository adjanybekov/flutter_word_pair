import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        "question": "What\'s your favourite colorrrr?",
        "answers": ["Red", "Green", "Blue"]
      },
      {
        "question": "What\'s your favourite animallll?",
        "answers": ["Cat", "Dog", "Horse"]
      },
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Quiz Game"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions)
              : Result()),
    );
  }
}
