
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_one_figma/core/themes/colors/app_colors.dart';
import 'package:task_one_figma/core/widgets/custom_button.dart';
import 'package:task_one_figma/features/upgrade_plan/presentation/screens/upgrade_plan_page.dart';

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