import 'dart:math';

class Bmibrain {
  Bmibrain(int height, int weight) {
    this.height = height;
    this.weight = weight;
  }
  int height = 0;
  int weight = 0;
  double _bmi = 0;
  String calculate() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getres() {
    if (_bmi >= 25) {
      return 'OVER-WEIGHT';
    } else if (_bmi > 18) {
      return 'NORMAL';
    } else {
      return 'UNDER-WEIGHT';
    }
  }

  String giveinter() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight , try to exercise more! ';
    } else if (_bmi > 18) {
      return 'You have a normal body weight , Good Job !';
    } else {
      return 'You have a lower than normal body weight , try to eat more!';
    }
  }
}
