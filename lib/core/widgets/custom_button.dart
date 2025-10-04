import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_one_figma/features/upgrade_plan/presentation/screens/upgrade_plan_page.dart';
import '../helper/spacing.dart';
import '../themes/styles/styles.dart';

class CustomButton extends StatelessWidget {
  Color? color;
  String? text;
  String? imagePath;
  CustomButton({super.key,this.text,this.color,this.imagePath});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> UpgradePlanScreen(),),);
      },
      child: Container(
        height: 44.39.h,
        width: 163.w,
        decoration: BoxDecoration(
          color: color?? Color(0xff8D899866).withValues(alpha: 0.4,),
          borderRadius: BorderRadius.circular(37,),

        ),
        child: SizedBox(
          width: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              horizontalPadding(10),
              SvgPicture.asset(imagePath?? 'assets/svgs/solar_stopwatch-play-bold.svg'),
          
              horizontalPadding(15),
                
               Text(
                text?? 'preview',
                style: TextStyles.font14WhiteBold 
               ),
                
            ],
          ),
        )
      ),
    );
  }
}