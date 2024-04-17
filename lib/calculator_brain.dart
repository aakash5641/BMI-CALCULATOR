import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.weight, required this.height});
  final int weight;
  final int height;
  double? _bmi;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 25.0) {
      return 'OverWeight';
    } else if (_bmi! > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String resultInterpretation() {
    if (_bmi! >= 25.0) {
      return 'Your Weight is more than normal Weight. Try to do more exercise!';
    } else if (_bmi! > 18.5) {
      return 'Your Weight is Normal. Good Job!';
    } else {
      return 'Your BMI Result is quite low, you should eat more food!';
    }
  }
}
