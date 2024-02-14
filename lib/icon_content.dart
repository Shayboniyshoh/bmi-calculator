import 'package:flutter/material.dart';

const labelStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

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
          style: labelStyle,
        ),
      ],
    );
  }
}
