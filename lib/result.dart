import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent';
    } else if (resultScore <= 12) {
      resultText = 'Pretty Likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are Strange';
    } else {
      resultText = 'You are bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
                foregroundColor: MaterialStateProperty.all(Colors.black)),
            // style: ElevatedButton.styleFrom(primary: Colors.orange, onPrimary: Colors.blue), // Alternative way
            child: Text('Restart Quiz!'),
            onPressed: resetHandler,
          ),
          TextButton(
              child: Text('A Text Button'),
              style: TextButton.styleFrom(primary: Colors.orange),
              onPressed: () {
                print('pressed textButton');
              })
        ],
      ),
    );
  }
}
