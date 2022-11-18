import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Qui extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerquest;

   Qui(
      {@required this.questions,
       @required this.answerquest,
             @required this.questionIndex,
});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
      child: Column(
        children: [
          Ques(questions[questionIndex]['questiontext']  as String),
          ...(questions[questionIndex]['option'] as List<Map<String, Object>>)
              .map((answer) {
            return //Ans(() => questionthe(answer['score'] as int) , answer['text'] as String);
                Ans(() => answerquest(answer['score'] as int),
                    answer['text'] as String);
          }).toList()
        ],
      ),
    );
  }
}
