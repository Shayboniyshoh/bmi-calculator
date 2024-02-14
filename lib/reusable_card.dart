import 'package:flutter/material.dart';

class ReUsableCard extends StatelessWidget {
  const ReUsableCard({
    super.key,
    required this.colour,
    this.childCard,
  });

  final Color colour;
  final Widget? childCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: childCard,
    );
  }
}
