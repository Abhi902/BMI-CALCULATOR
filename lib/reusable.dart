import 'package:flutter/material.dart';

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
      height: 152,
      width: 150,
    );
  }
}
