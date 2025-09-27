
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_one_figma/core/helper/spacing.dart';
import 'package:task_one_figma/core/themes/colors/app_colors.dart';
import 'package:task_one_figma/features/home/data/models/character.dart';

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
          style: GoogleFonts.raleway(
            textStyle: Theme.of(context).textTheme.displayLarge,
            fontSize: 16,
            color: AppColors.darkPurple,
            fontWeight: FontWeight.w600,
          ),
        ),

        verticalPadding(6),
         Text(
          character.animeName??
          'Hunter x Hunter',
          style: GoogleFonts.raleway(
            textStyle: Theme.of(context).textTheme.displayLarge,
            fontSize: 14,
            color: Color(0xffA9A9A9),
            fontWeight: FontWeight.w600,
          ),
        ),

      ],
    );
  }
}