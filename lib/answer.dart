import 'package:flutter/material.dart';
import './question.dart';
import './main.dart';

class Ans extends StatelessWidget {
  final  Function selectHandler;
  final String answertext;
  Ans(this.selectHandler,this.answertext);
  
  

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,

      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blueAccent)),
        child: Text(answertext ),
        onPressed: selectHandler,
      ),
    );
  }
}
