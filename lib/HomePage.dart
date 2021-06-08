import 'package:bma_flutter/PageName.dart';
import 'package:bma_flutter/Result_Page.dart';
import 'package:flutter/material.dart';
import 'package:bma_flutter/ReuseableCard.dart';
import 'Gunndercard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Conistants.dart';
// import 'Result_Page.dart';
import 'CalculatorBrean.dart';

class HomePage extends StatefulWidget {
  static String FirstPage = 'First',
  @override
  _HomePageState createState() => _HomePageState();
}

enum CardsColor { male, female }

class _HomePageState extends State<HomePage> {
  CardsColor selectedgunder;
  int height = 180;
  int weight = 60;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: ReuseableCard(
                  onpress: () {
                    setState(() {
                      selectedgunder = CardsColor.male;
                    });
                  },
                  colour: selectedgunder == CardsColor.male
                      ? activecolor
                      : inactivecolor,
                  cardchild: Gundercard(
                      GunderIcon: FontAwesomeIcons.mars, gunder: 'MaALE'),
                ),
              ),
              Expanded(
                child: ReuseableCard(
                  onpress: () {
                    setState(() {
                      selectedgunder = CardsColor.female;
                    });
                  },
                  colour: selectedgunder == CardsColor.female
                      ? activecolor
                      : inactivecolor,
                  cardchild: Gundercard(
                      GunderIcon: FontAwesomeIcons.venus, gunder: 'FEMALE'),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Color(0xFFF191C2B),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: KLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: KNumbTextStyle,
                      ),
                      Text(
                        'cm',
                      )
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    onChanged: (double value) {
                      setState(() {
                        height = value.round();
                      });
                    },
                    min: 100.0,
                    max: 220.0,
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: ReuseableCard(
                  colour: Color(0xFFF191C2B),
                  cardchild: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'WEIGHT',
                          style: KLabelTextStyle,
                        ),
                      ),
                      Text(
                        weight.toString(),
                        style: KNumbTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            heroTag: Text('btn1'),
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                            elevation: 0,
                            backgroundColor: Color(0xFF4C4F5E),
                            child: Icon(
                              FontAwesomeIcons.plus,
                              color: Colors.white,
                              size: 20.0,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          FloatingActionButton(
                            heroTag: Text('btn2'),
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                            elevation: 0,
                            backgroundColor: Color(0xFF4C4F5E),
                            child: Icon(
                              FontAwesomeIcons.minus,
                              color: Colors.white,
                              size: 20.0,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReuseableCard(
                  colour: Color(0xFFF191C2B),
                  cardchild: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'AGE',
                          style: KLabelTextStyle,
                        ),
                      ),
                      Text(
                        age.toString(),
                        style: KNumbTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            heroTag: Text('btn3'),
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                            elevation: 0,
                            backgroundColor: Color(0xFF4C4F5E),
                            child: Icon(
                              FontAwesomeIcons.plus,
                              color: Colors.white,
                              size: 20.0,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          FloatingActionButton(
                            heroTag: Text('btn4'),
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                            elevation: 0,
                            backgroundColor: Color(0xFF4C4F5E),
                            child: Icon(
                              FontAwesomeIcons.minus,
                              color: Colors.white,
                              size: 20.0,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              CalculatorBrean calc =
                  CalculatorBrean(height: height, weight: weight);
              String BMI = calc.calculate();
              String result = calc.getResult();
              String notes = calc.getNots();
              // Navigator.pushNamed(context, '/first');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return Result_Page(BMI: BMI, result: result, notes: notes);
                }),
              );
            },
            child: Container(
              child: Center(
                child: Text(
                  'CALCULATE',
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
