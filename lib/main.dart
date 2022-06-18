import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon.dart';
import 'package:bmi/reusable.dart';

const bottomheight = 80;
const activecardcolor = Color(0xff131e33);
const inactivecardcolor = Color(0xFF111328);
void main() {
  runApp(MyApp());
}

enum Gender {
  male,
  female,
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color malecardcolor = inactivecardcolor;
  Color femalecardcolor = inactivecardcolor;

  Gender? seletedgender;

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
                    onpressed: () {
                      setState(() {
                        seletedgender = Gender.male;
                      });
                    },
                    colour: seletedgender == Gender.male
                        ? activecardcolor
                        : inactivecardcolor,
                    cardchild:
                        reusablecardchilds(FontAwesomeIcons.mars, 'MALE'),
                  ),
                ),
                Expanded(
                  child: reusablewidget(
                    onpressed: () {
                      setState(() {
                        seletedgender = Gender.female;
                      });
                    },
                    colour: seletedgender == Gender.female
                        ? activecardcolor
                        : inactivecardcolor,
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
                    height: 49,
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
