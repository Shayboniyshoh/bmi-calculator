import 'package:bmi_calculator/constans.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

import 'package:bmi_calculator/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

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
          const Expanded(
            flex: 7,
            child: ReUsableCard(
              colour: kActiveCardClr,
              childCard: Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'OVERWEIGHT',
                      style: kResultTitleStyle,
                    ),
                    Text(
                      '28.4',
                      style: kResultNumberStyle,
                    ),
                    Text(
                      'You have a higher than normal body weight. Try to exercise more.',
                      style: kResultLabelStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
            pageName: '/',
            onTap: () {},
            buttonTitle: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
