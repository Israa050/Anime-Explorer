import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/themes/styles/styles.dart';
import '../../data/models/anime.dart';
import 'rating_tab.dart';

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
          style: TextStyles.font14DarkPurpleBold,
        ),

        verticalPadding(4),

        Text(
          anime.genere ?? 'Mystery',
          style: GoogleFonts.raleway(
            textStyle: TextStyles.font12GreyMedium,
          ),
        ),
      ],
    );
  }
}
