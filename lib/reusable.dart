import 'package:flutter/material.dart';

class reusablewidget extends StatelessWidget {
  reusablewidget({required this.colour, this.cardchild, this.onpressed});
  Color colour;
  Widget? cardchild;
  final VoidCallback? onpressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: colour,
        ),
        child: cardchild,
        height: 180,
        width: 150,
      ),
    );
  }
}
