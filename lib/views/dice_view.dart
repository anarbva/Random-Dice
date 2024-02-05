
import 'package:dice/app_constants/colors/app_colors.dart';
import 'package:dice/providers/dice_random_numbers_provider.dart';
import 'package:dice/widgets/dice_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DiceView extends StatelessWidget {
  const DiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.mainColor,
      appBar: AppBar(title: const Text("Dice",
      style: TextStyle(fontSize: 28, 
      color: AppColors.secondaryColor),),
      backgroundColor: AppColors.mainColor,
      elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer(builder: (context, ref, child){
               final diceProvider=ref.watch(dicerandomNumbersNotifierProvider);
              return  Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              DiceWidget(
                onPressed: ()=>ref.read(dicerandomNumbersNotifierProvider.notifier).changeDice(),
                diceNumber: diceProvider.left.toString(),
                ),
              const SizedBox(width: 20,),
              DiceWidget(
                onPressed: ()=>ref.read(dicerandomNumbersNotifierProvider.notifier).changeDice(),
                diceNumber: diceProvider.right.toString(),
                ),         
           
            ],

            );
            }
            ),
        
            const SizedBox(height: 20),
               Consumer(
                builder: (context, ref, child){
                 return TextButton(
                  onPressed: (){
                   ref.read(dicerandomNumbersNotifierProvider.notifier).restart();
                  }, 
                 
                  child: const Text("Restart", style: TextStyle(
                    color:AppColors.secondaryColor, fontSize: 30
                  ),
                  ),
                  );
                },
               ),
          ],
        ),
        
        ),
        
    );
  }
}


