import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class result extends StatelessWidget {
  final int resultScore;

  result(this.resultScore);
  
  String get resultpa {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      
      child:
      Text('$resultScore'),
    );
  }
}