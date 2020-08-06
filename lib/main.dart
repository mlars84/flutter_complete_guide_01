import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
      print(_questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['black', 'red', 'green', 'white']
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['cat', 'dog', 'bird', 'fish']
      },
      {
        'questionText': 'What\'s your favorite music genre?',
        'answers': ['doom metal', 'electro', 'indie', 'old-time']
      }
    ];

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
      body: Column(
        children: [
          Question(questions[_questionIndex]['questionText']),
          ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
            return Answer(_answerQuestion, answer);
          }).toList()
        ],
      ),
    ));
  }
}
