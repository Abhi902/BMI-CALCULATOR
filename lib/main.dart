import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomheight = 80;
const activecardcolor = Color(0xff131e33);
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0XFF0A0E21),
        scaffoldBackgroundColor: Color(0XFF0A0E21),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF0A0E21),
          title: Center(
            child: Text('BMI CALCULATOR'),
          ),
        ),
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: reusablewidget(
                    colour: activecardcolor,
                    cardchild:
                        reusablecardchilds(FontAwesomeIcons.mars, 'MALE'),
                  ),
                ),
                Expanded(
                  child: reusablewidget(
                    colour: activecardcolor,
                    cardchild:
                        reusablecardchilds(FontAwesomeIcons.venus, 'FEMALE'),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: reusablewidget(colour: activecardcolor),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: reusablewidget(colour: activecardcolor),
                ),
                Expanded(
                  child: reusablewidget(colour: activecardcolor),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Color(0xFFeb1555),
                    width: double.infinity,
                    height: 61.3,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class reusablecardchilds extends StatelessWidget {
  @override
  IconData? icon;
  String txt = '';

  reusablecardchilds(IconData ic, String tx) {
    this.icon = ic;
    this.txt = tx;
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(height: 15),
        Text(
          txt,
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}

class reusablewidget extends StatelessWidget {
  reusablewidget({required this.colour, this.cardchild});
  Color colour;
  Widget? cardchild;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: colour,
      ),
      child: cardchild,
      height: 180,
      width: 150,
    );
  }
}
