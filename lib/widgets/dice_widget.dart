
import 'package:dice/app_constants/colors/app_colors.dart';
import 'package:flutter/material.dart';

class DiceWidget extends StatelessWidget {
  const DiceWidget({
    super.key,
    
    required this.onPressed,
    required this.diceNumber,
  });
  final Function() onPressed;
  
  final String diceNumber;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed:onPressed,
        child: Image.asset(
          "assets/images/dice$diceNumber.png",
          color:AppColors.secondaryColor,
          ),
          ),
    );
  }
}