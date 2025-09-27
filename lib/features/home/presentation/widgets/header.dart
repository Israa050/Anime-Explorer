import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_one_figma/core/themes/colors/app_colors.dart';

Widget header(BuildContext context) {
  return Text(
    'Where Anime Comes Alive',
    style: GoogleFonts.raleway(
      textStyle: Theme.of(context).textTheme.displayLarge,
      fontSize: 24,
      color: AppColors.darkPurple,
      fontWeight: FontWeight.bold,
    ),
  );
}
