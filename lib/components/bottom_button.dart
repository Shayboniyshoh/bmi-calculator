import 'package:flutter/material.dart';
import 'package:bmi_calculator/constans.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    super.key,
    this.pageName,
    required this.onTap,
    this.buttonTitle,
  });
  final String? pageName;
  final VoidCallback onTap;
  final String? buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, pageName!),
      child: Container(
        height: kBtmContHeight,
        width: double.infinity,
        color: kBtmContClr,
        margin: const EdgeInsets.only(top: 10.0),
        padding: const EdgeInsets.only(bottom: 20.0, top: 20.0),
        child: Center(
          child: Text(
            buttonTitle!,
            style: kLargeButtonStyle,
          ),
        ),
      ),
    );
  }
}
