import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'black', 'score': 10},
        {'text': 'red', 'score': 2},
        {'text': 'green', 'score': 4},
        {'text': 'white', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'cat', 'score': 3},
        {'text': 'dog', 'score': 5},
        {'text': 'bird', 'score': 7},
        {'text': 'fish', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite music genre?',
      'answers': [
        {'text': 'doom metal', 'score': 8},
        {'text': 'electro', 'score': 2},
        {'text': 'indie', 'score': 6},
        {'text': 'old-time', 'score': 9}
      ]
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    print(_totalScore);
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Questions',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w200),
          ),
          backgroundColor: Colors.black,
          shadowColor: Colors.pink,
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionsList: _questions[_questionIndex],
              )
            : Result(finalScore: _totalScore),
        ),
      )
    );
  }
}
