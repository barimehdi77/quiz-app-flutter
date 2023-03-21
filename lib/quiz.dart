import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int currentQuestion;
  final Function buttonPressed;

  Quiz(
      {@required this.questions,
      @required this.buttonPressed,
      @required this.currentQuestion});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Question(questions[currentQuestion]['question']),
          ...(questions[currentQuestion]['answers']
                  as List<Map<String, Object>>)
              .map((answer) {
            return Answer(
                () => buttonPressed(answer['isRight']), answer['answer']);
          }).toList()
        ],
      ),
    );
  }
}
