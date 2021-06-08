import 'package:bma_flutter/Result_Page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:bma_flutter/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomePage.FirstPage: (context) => HomePage(),
        '/first': (context) => Result_Page()
      },
      home: HomePage(),
      theme: ThemeData.dark().copyWith(
        sliderTheme: SliderTheme.of(context).copyWith(
            activeTrackColor: Colors.white,
            inactiveTrackColor: Color(0xFF8D8E98),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
            thumbColor: Color(0xFFEB1555),
            overlayColor: Color(0x1fEB1555)),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        primaryColor: Color(0xFF21253B),
        //accentColor: Colors.blueGrey,
      ),

      initialRoute: '/',
    );
  }
}
