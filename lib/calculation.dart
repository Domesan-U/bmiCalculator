

import 'dart:math';

class Calculator{
  double _bmi=64.0;
  Calculator({required this.height,required this.weight});
  final int height;
  final int weight;

  String calculateBMI(){
    double _bmi = weight / pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    double _bmi = weight / pow(height/100,2);

    if(_bmi>=25) {
      return 'Overweight';
    }
    else if(_bmi>= 18.5) {
      return 'Normal';
    }
    else{
      return 'Underweight';
    }

    }
  String getThoughts(){
    double _bmi = weight / pow(height/100,2);
    if(_bmi>=25) {
      return 'You have a higher bmi try to eat less';
    }
    else if(_bmi > 18.5) {
      return 'Congratulation, You maintaining a perfect bmi';
    }
    else{
      return 'You have a lower bmi and probably you should eat more';
    }

  }
  }
