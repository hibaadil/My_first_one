import 'package:bma_flutter/Conistants.dart';
import 'package:bma_flutter/HomePage.dart';
import 'package:flutter/material.dart';
import 'ReuseableCard.dart';

class Result_Page extends StatelessWidget {
  String BMI;
  String result;
  String notes;
  Result_Page({this.BMI, this.result, this.notes});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Results',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 190.0, top: 50.0),
            child: Text(
              'Your Result',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.w900),
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 1.0),
            child: Container(
              width: 380.0,
              height: 470,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Color(0xFF31333E),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      result,
                      style: TextStyle(
                        color: Color(0xFFF679E69),
                        fontSize: 30.0,
                      ),
                    ),
                    SizedBox(
                      height: 100.0,
                    ),
                    Text(
                      BMI,
                      style: TextStyle(
                        fontSize: 80.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(
                      height: 100.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        notes,
                        style: TextStyle(fontSize: 20.0),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          GestureDetector(
            onTap: () {
              // Navigator.pushNamed(context, '/first');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return HomePage();
                }),
              );
            },
            child: Container(
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: KLarglabelStyle,
                ),
              ),
              width: double.infinity,
              height: 60.0,
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
            ),
          )
        ],
      ),
    );
  }
}
