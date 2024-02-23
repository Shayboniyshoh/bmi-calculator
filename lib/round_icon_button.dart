import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({super.key, this.icon, required this.onPress});
  final IconData? icon;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6.0,
      constraints: const BoxConstraints(
        minWidth: 56.0,
        minHeight: 56.0,
      ),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      onPressed: onPress,
      child: Icon(icon),
    );
  }
}
