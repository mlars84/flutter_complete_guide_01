import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final Function resetHandler;

  Result({this.finalScore, this.resetHandler});

  String get resulPhrase { 
    return "The final score is $finalScore";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resulPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart quiz'),
            textColor: Colors.blue,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
