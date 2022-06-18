import 'package:flutter/material.dart';

class reusablewidget extends StatelessWidget {
<<<<<<< HEAD
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
=======
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
>>>>>>> 98fcc2d5d28e345c6188f8fb5d2364b54bb3019a
    );
  }
}
