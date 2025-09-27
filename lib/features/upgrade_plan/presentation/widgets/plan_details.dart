
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_one_figma/core/themes/colors/app_colors.dart';

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
                  style: GoogleFonts.raleway(
                    textStyle: Theme.of(context).textTheme.bodySmall,
                    fontSize: 16,
                    color:color?? Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),

               RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  children: [

                  TextSpan(
                  text: '\$$price USD',
                  style: GoogleFonts.raleway(
                    textStyle: Theme.of(context).textTheme.bodySmall,
                    fontSize: 14,
                    color:color?? Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                 TextSpan(
                  text: text=='Annually'?'/Year':'/Month',
                  style: GoogleFonts.raleway(
                    textStyle: Theme.of(context).textTheme.bodySmall,
                    fontSize: 14,
                    color:bodyColor?? AppColors.light,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
                )
               ),

               Text(
                  'Include Family Sharing',
                   textAlign: TextAlign.start,
                  style: GoogleFonts.raleway(
                    textStyle: Theme.of(context).textTheme.bodySmall,
                    fontSize: 12,
                    color:bodyColor?? AppColors.light,
                    fontWeight: FontWeight.w700,
                  ),
                ),
               
              ],
            ),
          );
}