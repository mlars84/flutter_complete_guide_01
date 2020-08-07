import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Map<dynamic, dynamic> questionsList;
  final Function answerQuestion;

  Quiz({@required this.questionsList, @required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questionsList['questionText']),
        ...(questionsList['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
