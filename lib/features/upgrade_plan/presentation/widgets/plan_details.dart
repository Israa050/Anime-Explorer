
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/themes/colors/app_colors.dart';
import '../../../../core/themes/styles/styles.dart';

Widget planDetails(BuildContext context,String? price,String? text,Color? color,Color? bodyColor){
  return SizedBox(
            height: 65.h,
            width: 132.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text?? 'Monthly',
                  textAlign: TextAlign.start,
                  style: color==null? TextStyles.font14WhiteBold : TextStyles.font14WhiteBold.copyWith(color: Colors.black,),
                ),

               RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  children: [

                  TextSpan(
                  text: '\$$price USD',
                  style:color==null? TextStyles.font16WhiteBold : TextStyles.font16WhiteBold.copyWith(color: Colors.black),
                ),

                 TextSpan(
                  text: text=='Annually'?'/Year':'/Month',
                  style: color==null? TextStyles.font14DarkPurpleBold.copyWith(color: AppColors.light) : 
                  TextStyles.font14DarkPurpleBold.copyWith(color: AppColors.purpleLight) ,
                ),
              ],
                )
               ),

               Text(
                  'Include Family Sharing',
                   textAlign: TextAlign.start,
                  style: color==null? TextStyles.font12LightPurpleBold:  TextStyles.font12LightPurpleBold.copyWith(color: AppColors.purpleLight),
                ),
               
              ],
            ),
          );
}