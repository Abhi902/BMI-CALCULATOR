import 'package:bmi/icon.dart';
import 'package:bmi/main.dart';
import 'package:bmi/reusable.dart';
import 'package:flutter/material.dart';

class results_page extends StatelessWidget {
  results_page(String ans, String say, String inter) {
    this.ans = ans;
    this.say = say;
    this.inter = inter;
  }

  String ans = "";
  String say = "";
  String inter = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(height: 30),
          Text(
            'YOUR RESULT',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 40,
            ),
          ),
          SizedBox(height: 30),
          Expanded(
            flex: 5,
            child: reusablewidget(
              colour: Color(0xff131e33),
              cardchild: Column(
                children: <Widget>[
                  SizedBox(height: 30),
                  Text(
                    say,
                    style: TextStyle(
                      color: Color(0xff24d876),
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(height: 80),
                  Text(
                    ans,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 80,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(height: 80),
                  Text(
                    inter,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(height: 90),
                  bottombuttom(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyApp(),
                      ),
                    );
                  }, 'CALCULATE AGAIN'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
