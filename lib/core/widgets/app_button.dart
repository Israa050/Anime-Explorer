import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../themes/colors/app_colors.dart';
import '../themes/styles/styles.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 343.w,
      decoration: BoxDecoration(
        color: AppColors.purple,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          'Continue',
          textAlign: TextAlign.start,
          style: TextStyles.font16WhiteBold,
        ),
      ),
    );
  }
}
