import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final height;
  final weight;
  double _bmi;

  String CaculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String Getresult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String GetInterpretation() {
    if (_bmi >= 25) {
      return 'You have a Higher than Normal body weight, '
          'Try to exercise more ';
    } else if (_bmi >= 18.5) {
      return 'You have Normal body weight,  Good job!';
    } else {
      return 'you have a Lower than normal body weight,'
          'Try to eat more.';
    }
  }
}
