import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;

  Result({this.finalScore});

  String get resulPhrase { 
    return "The final score is $finalScore";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resulPhrase,
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
