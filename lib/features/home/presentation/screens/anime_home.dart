import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_one_figma/core/helper/spacing.dart';
import 'package:task_one_figma/core/themes/colors/app_colors.dart';
import 'package:task_one_figma/features/home/presentation/widgets/anime_list.dart';
import 'package:task_one_figma/features/home/presentation/widgets/character_list.dart';
import 'package:task_one_figma/features/home/presentation/widgets/header.dart';
import 'package:task_one_figma/features/home/presentation/widgets/tabs_list.dart';

class AnimeHome extends StatelessWidget {
  const AnimeHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: [AppColors.light, Colors.white],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: -100,
              left: 250,
              child: Transform.rotate(
                angle: 12.84 * pi / 180, // Convert degrees to radians
                child: SvgPicture.asset(
                  'assets/svgs/star2.svg',
                  height: 432,
                  width: 432,
                ),
              ),
            ),
        
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(
                    //top: 67,
                    top: 20,
                   left: 14),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      header(context),
                  
                      verticalPadding(24),
                  
                      SizedBox(height: 40, child: TabsList()),
                  
                      verticalPadding(20),
                  
                      SizedBox(height: 300, child: AnimeList()),
                  
                      verticalPadding(24),
                  
                      Text(
                        'Top Characters',
                        style: GoogleFonts.raleway(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize: 24,
                          color: AppColors.darkPurple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                  
                      verticalPadding(24),
                  
                      SizedBox(height: 190,child: CharacterList()),

                  
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
