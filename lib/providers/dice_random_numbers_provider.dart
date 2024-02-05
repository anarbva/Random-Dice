

import 'dart:math';

import 'package:dice/models/dice_models.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dice_random_numbers_provider.g.dart';

@riverpod
class DicerandomNumbersNotifier extends _$DicerandomNumbersNotifier{
  @override
  DiceModel build(){
    return const DiceModel(
      right: 1,
       left: 3
       );
}

  void changeDice(){
    final random = Random();
    final diceModel= DiceModel(
      right:random.nextInt(2)+1,
      left: random.nextInt(4)+1,
    );
     
     state = diceModel;    
   
  }

   void restart(){
    const diceModel=DiceModel(
      right: 1,
       left: 1,
       );
     state = diceModel; 
   } 
}
