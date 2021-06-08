import 'dart:math';

class CalculatorBrean {
  final int height;
  final int weight;
  double _BMI;

  CalculatorBrean({this.height, this.weight});

  String calculate() {
    _BMI = weight / pow(height / 100, 2);
    return _BMI.toStringAsFixed(1);
  }

  String getResult() {
    if (_BMI >= 25) {
      return 'Overweight';
    } else if (_BMI <= 18.5) {
      return 'UnderWeight';
    } else
      return 'Normal';
  }

  String getNots() {
    if (_BMI >= 25) {
      return 'You have a higher than a normal body weight, try to excercise more.';
    } else if (_BMI <= 18.5) {
      return 'You have a lower than a normal body weight, you can eat a bit more';
    } else
      return 'You have a Normal body weight, good jop!';
  }
}
