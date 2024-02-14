import 'package:flutter/material.dart';
import 'reusable_card.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4.0,
        title: const Center(
          child: Text(
            'BMI CALCULATOR',
          ),
        ),
      ),
      body: const Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReUsableCard(colour: Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: ReUsableCard(colour: Color(0xFF1D1E33)),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReUsableCard(colour: Color(0xFF1D1E33)),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReUsableCard(colour: Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: ReUsableCard(colour: Color(0xFF1D1E33)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
