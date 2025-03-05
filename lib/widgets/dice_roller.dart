import 'dart:math';
import 'package:flutter/material.dart';
import 'package:rolldice_app/widgets/styled_text.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;
  void rolldice() {
    setState(() {
      currentDiceRoll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/dice-$currentDiceRoll.png", width: 200),
          SizedBox(height: 20),
          TextButton(onPressed: rolldice, child: StyledText(text: "Roll Dice")),
        ],
      ),
    );
  }
}
