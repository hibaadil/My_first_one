import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard({this.cardchild, this.colour, this.onpress});
  final Widget cardchild;
  final Color colour;
  final Function onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: cardchild,
        width: 190,
        height: 200,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
          // color: Color(0xFFF191C2B),
        ),
      ),
    );
  }
}
