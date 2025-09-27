import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_one_figma/core/helper/spacing.dart';
import 'package:task_one_figma/core/themes/colors/app_colors.dart';
import 'package:task_one_figma/features/home/data/models/anime.dart';
import 'package:task_one_figma/features/home/presentation/widgets/rating_tab.dart';

class AnimeCard extends StatelessWidget {
  Anime anime;
  AnimeCard({super.key,required this.anime});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              height: 245,
              width: 184,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(anime.imagePath ?? 'assets/images/anime1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Positioned(top: 12, left: 120, child: RatingTab()),
          ],
        ),

        verticalPadding(8),

        Text(
          anime.title?? 'Detective Conan',
          style: GoogleFonts.raleway(
            textStyle: Theme.of(context).textTheme.displayLarge,
            fontSize: 14,
            color: AppColors.darkPurple,
            fontWeight: FontWeight.w700,
          ),
        ),

        verticalPadding(4),

        Text(
          anime.genere ?? 'Mystery',
          style: GoogleFonts.raleway(
            textStyle: Theme.of(context).textTheme.displaySmall,
            fontSize: 14,
            color: Color(0xffA9A9A9),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
