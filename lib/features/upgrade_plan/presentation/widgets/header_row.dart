import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/themes/styles/styles.dart';

Widget headerRow(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [

      Flexible(flex: 2,child: SizedBox(width: 50.w,)),

      
      Text(
        'Upgrade Plan',
        style: TextStyles.font22DarkPurpleBold,
      ),

      horizontalPadding(66.w),

      SvgPicture.asset('assets/svgs/close.svg'),
    ],
  );
}
