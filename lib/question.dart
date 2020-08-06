import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: Text(
        questionText,
        style: TextStyle(
          color: Colors.grey[800],
          fontWeight: FontWeight.w200,
          fontSize: 28,
          letterSpacing: 5,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
