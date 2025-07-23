import 'dart:math';

class BmiCalculator {
  final int weight;
  final int height;

  double _bmi = 0.0;

  BmiCalculator({required this.weight, required this.height});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String getResults() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18) {
      return "Healthy";
    } else {
      return "Underweight";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "You are a fucking fatass. Stop eating so much doritos..";
    } else if (_bmi > 18) {
      return "Normie. stop being so normal, no one likes normal people.";
    } else {
      return "Bruhh you look like a skeleton, are you being held hostage??";
    }
  }
}
