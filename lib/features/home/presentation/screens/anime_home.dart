import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/themes/colors/app_colors.dart';
import '../../../../core/themes/styles/styles.dart';
import '../widgets/anime_list.dart';
import '../widgets/character_list.dart';
import '../widgets/header.dart';
import '../widgets/tabs_list.dart';

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
                        style: TextStyles.font24DarkPurpuleBold.copyWith(color: Colors.black,),
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
