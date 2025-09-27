import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_one_figma/core/helper/spacing.dart';
import 'package:task_one_figma/core/themes/colors/app_colors.dart';

Widget headerRow(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [

      Flexible(flex: 2,child: SizedBox(width: 50.w,)),

      
      Text(
        'Upgrade Plan',
        style: GoogleFonts.raleway(
          textStyle: Theme.of(context).textTheme.displayLarge,
          fontSize: 22,
          color: AppColors.darkPurple,
          fontWeight: FontWeight.w700,
        ),
      ),

      horizontalPadding(66.w),

      SvgPicture.asset('assets/svgs/close.svg'),
    ],
  );
}
