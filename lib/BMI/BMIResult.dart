import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget {
  BMIResult(
      {required this.result, required this.value, required this.description});

  final String result;
  final String value;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Text(result + value + description));
  }
}
