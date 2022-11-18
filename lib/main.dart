import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/answer.dart';
import './question.dart';
import './answer.dart';
import './result.dart';
import './qui.dart';
void main() {
  runApp(MyApp());
}
/*void main()=>runApp(MyApp());*/ // this is a alternative of curley braacket

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions  = const [
    {
      'questiontext': 'what is your favorite color?',
      'option': [
        // 'black','red','blue','yellow','green'
        {'text': 'black', 'score': 10},
        {'text': 'red', 'score': 5},
        {'text': 'blue', 'score': 3},
        {'text ': 'yellow', 'score': 2},
        {'text': 'green', 'score': 1}
      ],
      // 'ansques': ['red'],
    },
    {
      'questiontext': 'what is your favorite anmial?',
      'option': [
        // 'rabit','ele','lion','dog','cow'

        {'text': 'rabit', 'score': 10},
        {'text': 'elephent', 'score': 5},
        {'text': 'lion', 'score': 3},
        {'text ': 'dog', 'score': 2},
        {'text': 'cow', 'score': 1}
      ],
      // 'ansques': ['lion'],
    },
    {
      'questiontext': 'what is your favorite author?',
      'option': [
        // 'bahagat'
        //  'daiesh richi',
        //  'james goslim',
        //  'kk.savani',
        {'text': 'bahagat' , 'score': 10} ,
        {'text': 'daiesh richi', 'score': 5},
        {'text': 'james goslim', 'score': 3},
        {'text ': 'kk.savani', 'score': 2},
      ],
      // 'ansques': ['james goslim'],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;
  void questionthe(int score) {
    _totalScore =_totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("we have  more questions");
    } else {
      print("no more questions");
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
        body: _questionIndex < _questions.length?
      
              //    Column(
              //     children: [
              //     Ques(_questions[_questionIndex]['questiontext'] as String),
              //     SizedBox(height: 30),
              //     ...(_questions[_questionIndex]['option']
              //             as List<Map<String ,Object>>)
              //         .map((answer) {
              //       return //Ans(() => questionthe(answer['score'] as int) , answer['text'] as String);
              //           Ans(() => questionthe(answer['score'] as int),
              //               answer['text'] as String);
              //     }).toList()
              //   ],
              // )
              Qui(
                answerquest:questionthe,
                questionIndex:_questionIndex,
                questions:_questions,

                 )
        : result(_totalScore),

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
      ),
    );
  }
}
