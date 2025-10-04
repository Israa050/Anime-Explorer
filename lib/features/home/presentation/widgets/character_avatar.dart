
import 'package:flutter/material.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/themes/styles/styles.dart';
import '../../data/models/character.dart';

class CharacterAvatar extends StatelessWidget {
  
  Character character;
  CharacterAvatar({super.key,required this.character});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
         radius: 60,
         backgroundImage: AssetImage(character.imagePath?? 'assets/images/conan.jpg'),
        ),

        verticalPadding(10),

         Text(
          character.characterName??
          'Gon Freecss',
          style: TextStyles.font16DarkPurpleSemiBold,
        ),

        verticalPadding(6),
         Text(
          character.animeName??
          'Hunter x Hunter',
          style: TextStyles.font14GreySemiBold,
        ),

      ],
    );
  }
}