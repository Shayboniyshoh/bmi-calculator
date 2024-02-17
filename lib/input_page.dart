import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const btmContHeight = 80.0;
const activeCardClr = Color(0xFF1D1E33);
const inactiveCardClr = Color(0xFF111328);
const btmContClr = Color(0xFFEB1555);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardClr = inactiveCardClr;
  Color femaleCardClr = inactiveCardClr;
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4.0,
        title: const Center(
          child: Text(
            'AWESOME BMI CALCULATOR',
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ReUsableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? activeCardClr
                        : inactiveCardClr,
                    childCard: const ChildCard(
                      ctmIcon: FontAwesomeIcons.mars,
                      cardText: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: ReUsableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? activeCardClr
                        : femaleCardClr,
                    childCard: const ChildCard(
                      ctmIcon: FontAwesomeIcons.venus,
                      cardText: "FEMALE",
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ReUsableCard(
              colour: activeCardClr,
            ),
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReUsableCard(
                    colour: activeCardClr,
                  ),
                ),
                Expanded(
                  child: ReUsableCard(
                    colour: activeCardClr,
                  ),
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
