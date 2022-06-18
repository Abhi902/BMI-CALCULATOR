import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon.dart';
import 'package:bmi/reusable.dart';
import 'conststorage.dart';

const TextStyle currenttextstyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

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
  int height = 180;

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
                  child: reusablewidget(
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'HEIGHT',
                            style: currenttextstyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(
                                height.toString(),
                                style: TextStyle(
                                    fontSize: 80, fontWeight: FontWeight.w900),
                              ),
                              Text('cm'),
                            ],
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              inactiveTrackColor: Color(0xff8d8898),
                              activeTrackColor: Colors.white,
                              thumbColor: Color(0XFFEB1555),
                              overlayColor: Color(0XFFEB1555),
                              thumbShape:
                                  RoundSliderThumbShape(enabledThumbRadius: 15),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 30),
                            ),
                            child: Slider(
                              value: height.toDouble(),
                              max: 220,
                              min: 150,
                              onChanged: (double newvalue) {
                                setState(() {
                                  height = newvalue.round();
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      colour: activecardcolor),
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
