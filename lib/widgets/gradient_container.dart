import 'package:flutter/material.dart';
import 'package:rolldice_app/widgets/dice_roller.dart';

class GradientContainer extends StatelessWidget {
   GradientContainer({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [const Color.fromARGB(255, 35, 19, 186), Colors.red],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: DiceRoller()
    );
  }
}
