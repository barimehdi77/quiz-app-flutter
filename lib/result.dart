import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final int numberOfQuestions;
  final VoidCallback resetQuiz;

  Result(
      {@required this.totalScore,
      @required this.numberOfQuestions,
      @required this.resetQuiz});

  String get resultPhrase {
    String result;

    if (totalScore == numberOfQuestions)
      result = 'You are a legend in football!' +
          '\nYour score is ${totalScore}/${numberOfQuestions}';
    else if (totalScore < numberOfQuestions &&
        totalScore > numberOfQuestions / 2)
      result = 'You have a base level in football' +
          '\nYour score is ${totalScore}/${numberOfQuestions}';
    else
      result = 'Go to your kitchen' +
          '\nYour score is ${totalScore}/${numberOfQuestions}';
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: resetQuiz,
            child: Text('Try Again!'),
          )
        ],
      ),
    );
  }
}
