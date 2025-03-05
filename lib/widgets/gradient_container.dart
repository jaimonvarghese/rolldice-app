import 'package:flutter/material.dart';
import 'package:rolldice_app/widgets/styled_text.dart';

class GradientContainer extends StatelessWidget {
   GradientContainer({super.key});

  var activeDiceImage = "assets/images/dice-1.png";
  void rolldice(){
    
  }

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
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/dice-1.png', width: 200,),
            SizedBox(height: 20,),
            TextButton(onPressed: rolldice, child: StyledText(text: "Roll Dice"),),
          ],
        ),
      ),
    );
  }
}
