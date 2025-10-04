
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/themes/colors/app_colors.dart';
import '../../../../core/widgets/custom_button.dart';

class CustomNav extends StatelessWidget {
  const CustomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.darkPurple,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton(),
            CustomButton(
              text: 'watch',
              color: AppColors.purple,
              imagePath: 'assets/svgs/watch.svg',
            ),
      
          ],
        ),
      );
  }
}