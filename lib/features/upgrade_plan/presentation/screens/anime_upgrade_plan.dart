import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_one_figma/core/helper/spacing.dart';
import 'package:task_one_figma/core/themes/colors/app_colors.dart';
import 'package:task_one_figma/core/widgets/app_button.dart';
import 'package:task_one_figma/features/upgrade_plan/presentation/widgets/header_row.dart';
import 'package:task_one_figma/features/upgrade_plan/presentation/widgets/plan_card.dart';

class AnimeUpgradePlan extends StatelessWidget {
  const AnimeUpgradePlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            top: -207.07.sp,
            left: -180.sp,
            child: SvgPicture.asset('assets/svgs/star2.svg'),
          ),

          Positioned(
            top: 149.sp,
            left: 231.sp,
            child: SvgPicture.asset('assets/svgs/star1.svg'),
          ),

          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                verticalPadding(67.5.h),
                headerRow(context),
            
                SizedBox(
                  height: 207.h,
                  width: 207.w,
                  child: Image.asset('assets/images/rocket_boy.png'),
                ),
            
                SizedBox(
                  width: 292.w,
                  height: 120.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 70.h,
                        width: 292.w,
                        child: Text(
                          textAlign: TextAlign.center,
                          'Seamless Anime \nExperience, Ad-Free.',
                          style: GoogleFonts.raleway(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            fontSize: 24,
                            color: AppColors.darkPurple,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
            
            
                       SizedBox(
                        height: 40.h,
                        width: 292.w,
                        child: Text(
                          textAlign: TextAlign.center,
                          'Enjoy unlimited anime streaming without interruptions.',
                          style: GoogleFonts.raleway(
                            textStyle: Theme.of(context).textTheme.bodySmall,
                            fontSize: 14,
                            color: AppColors.grey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                ),
            
                verticalPadding(23),
            
                PlanCard(isChecked: true,),
                verticalPadding(16.h),
                PlanCard(
                  isChecked: false,
                  text: 'Annually',
                  price: '50',
                  color: Colors.white,
                  textColor: Colors.black,
                  bodyColor: Color(0xffA49AD8),
                ),

                verticalPadding(37.h),
            
                AppButton(),

                verticalPadding(15.sp)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
