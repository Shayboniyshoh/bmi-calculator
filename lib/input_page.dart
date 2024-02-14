import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const btmContHeight = 80.0;
const activeCardClr = Color(0xFF1D1E33);
const btmContClr = Color(0xFFEB1555);

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
      body: Column(
        children: [
          const Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ReUsableCard(
                    colour: activeCardClr,
                    childCard: ChildCard(
                      ctmIcon: FontAwesomeIcons.mars,
                      cardText: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: ReUsableCard(
                    colour: activeCardClr,
                    childCard: ChildCard(
                      ctmIcon: FontAwesomeIcons.venus,
                      cardText: "FEMALE",
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ReUsableCard(colour: activeCardClr),
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReUsableCard(colour: activeCardClr),
                ),
                Expanded(
                  child: ReUsableCard(colour: activeCardClr),
                ),
              ],
            ),
          ),
          Container(
            height: btmContHeight,
            width: double.infinity,
            color: btmContClr,
            margin: const EdgeInsets.only(top: 10.0),
          ),
        ],
      ),
    );
  }
}
