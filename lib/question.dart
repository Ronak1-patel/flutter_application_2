import 'package:flutter/material.dart';

class Ques extends StatelessWidget {
  final String questiostext;
  Ques(this.questiostext);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questiostext,
        style: TextStyle(fontSize: 18, color: Colors.black),
        textAlign: TextAlign.center,
      ),
    );
  }
}
