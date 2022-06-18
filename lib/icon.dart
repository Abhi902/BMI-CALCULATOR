import 'package:flutter/material.dart';
import 'conststorage.dart';

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
          style: currenttextstyle,
        ),
      ],
    );
  }
}
