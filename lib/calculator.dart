import 'dart:math';
import 'package:flutter/material.dart';

class CalculatorBmi {
  CalculatorBmi({@required this.height, @required this.weight});

  final height;
  final weight;

  double _bmi;

  String calculatbmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getresult() {
    if (_bmi >= 30) {
      return 'Obesity ';
    } else if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 30) {
      return 'You are very fat. You need to lose your weight!!! ';
    } else if (_bmi >= 25) {
      return 'You have higher then normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have normal body weight. Good job.';
    } else {
      return 'You have lower then normal body weight. You can eat a bit more.';
    }
  }
}
