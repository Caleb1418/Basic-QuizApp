import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it';
    if (resultScore <= 14) {
      resultText = 'You are awesome(i think?)';
    } else if (resultScore <= 17) {
      resultText = "You are a bit cooler";
    } else if (resultScore <= 20) {
      resultText = 'You are a goat';
    } else {
      resultText = 'Delete yourself';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            child: Text("Restart Quiz"),
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
