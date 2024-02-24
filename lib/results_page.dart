import 'package:bmi_calculator/constans.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4.0,
        title: const Text("BMI CALCULATOR"),
      ),
      body: const Center(
          child: Text(
        'Hello',
        style: kNumberStyle,
      )),
    );
  }
}
