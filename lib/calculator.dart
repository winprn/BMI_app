import 'dart:math';

class Calculator {
  Calculator({required this.height, required this.weight});

  final int height, weight;
  double _bmi = 0;

  String calculateBMI() {
    double bmi = weight / pow(height / 100, 2);
    _bmi = bmi;
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25) return 'Overweight';
    if (_bmi > 18.5) return 'Normal';
    return 'Underweight';
  }

  String getInterpretation() {
    if (_bmi > 25) return 'May` beo\' vai loz';
    if (_bmi > 18.5) return 'Can doi';
    return 'Nghie^n.';
  }
}
