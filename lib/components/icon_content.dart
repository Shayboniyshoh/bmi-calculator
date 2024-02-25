import 'package:flutter/material.dart';
import 'package:bmi_calculator/constans.dart';

class ChildCard extends StatelessWidget {
  const ChildCard({
    super.key,
    this.ctmIcon,
    required this.cardText,
  });

  final IconData? ctmIcon;
  final String cardText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          ctmIcon,
          size: 80.0,
        ),
        const SizedBox(height: 15.0),
        Text(
          cardText,
          textAlign: TextAlign.center,
          style: kLabelStyle,
        ),
      ],
    );
  }
}
