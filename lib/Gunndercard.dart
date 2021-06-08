import 'package:flutter/material.dart';

class Gundercard extends StatelessWidget {
  Gundercard({this.gunder, this.GunderIcon});
  final String gunder;
  final IconData GunderIcon;
  final Color fontColor = Color(0xFF8D8E98);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          GunderIcon,
          size: 80,
          color: Colors.grey,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          gunder,
          style: TextStyle(fontSize: 27.0, color: fontColor),
        ),
      ],
    );
  }
}
