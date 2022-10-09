import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/answer.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}
/*void main() =>  runApp(MyApp());*/ // this is a alternative of curley braacket

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questiontext': 'what is your favorite color',
      'answer': ['black', 'red', 'blue', 'yellow', 'green'],
    },
    {
      'questiontext': 'what is your favorite anmial',
      'answer': ['rabit', 'elephent', 'lion', 'dog', 'cow'],
    },
    {
      'questiontext': 'what is your favorite author',
      'answer': ['bahagat', 'daiesh richi', 'james goslim', 'kk.savani'],
    },
  ];
  var _questionIndex = 0;
  void questionthe() {
    
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < questions.length) {
      print("no more question");
    }
  }

  // void answerthe() {
  //   _answerIndex = _answerIndex + 1;
  // }

  @override
  Widget build(BuildContext context) {
    var dummy = ['hii'];
    dummy.add('ronak');
    print(dummy);
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("this is  first app!")),
            body: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Ques(questions[_questionIndex]['questiontext'] as String),
                SizedBox(height: 30),
                ...(questions[_questionIndex]['answer'] as List<String>)
                    .map((answer) {
                  return Ans(questionthe, answer);
                }).toList()

                /*ElevatedButton(
                  child: Text('answer2'),
                  onPressed: answerthequestion,
                  /* onPressed: () {
                    
                ...(questions[_questionIndex]['answer'] as List<String>)
                    .map((answer) {
                  return Ans(questionthe, answer);
                }).toList()
          
                    print('Answer 2 choosen');
                  },*/
                ),*/
              ],
            )));
  }
}
