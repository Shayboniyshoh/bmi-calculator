import 'package:bmi_calculator/constans.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({
    super.key,
    required this.getResult,
    required this.bmiCalculate,
    required this.getDescription,
  });
  final String getResult;
  final String bmiCalculate;
  final String getDescription;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4.0,
        title: const Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(height: 30.0),
          const Expanded(
            child: Text('YOUR RESULTS', style: kNumberStyle),
          ),
          Expanded(
            flex: 7,
            child: ReUsableCard(
              colour: kActiveCardClr,
              childCard: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      getResult.toUpperCase(),
                      style: kResultTitleStyle,
                    ),
                    Text(
                      bmiCalculate,
                      style: kResultNumberStyle,
                    ),
                    Text(
                      getDescription,
                      style: kResultLabelStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
