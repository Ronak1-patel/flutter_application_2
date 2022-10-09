import 'package:flutter/material.dart';
import './question.dart';
import './main.dart';

class Ans extends StatelessWidget {
  final  VoidCallback selectHandler;
  final String answertext;
  Ans(this.selectHandler,this.answertext);
  
  

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 250,
      height: 35,  
      margin: EdgeInsets.all(10),

      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blueAccent)),
        child: Text(answertext, /*question*/ /*question.elementAt(0)*/),
        //onPressed:
        //  answerthequestion
        onPressed: selectHandler,
      ),
    );
  }
}
