import 'package:bmi/icon.dart';
import 'package:bmi/main.dart';
import 'package:bmi/reusable.dart';
import 'package:flutter/material.dart';

class results_page extends StatelessWidget {
  const results_page({Key? key}) : super(key: key);

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
                    'NORMAL',
                    style: TextStyle(
                      color: Color(0xff24d876),
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(height: 80),
                  Text(
                    '18.5',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 80,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(height: 80),
                  Text(
                    'your bmi result is quite low',
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
