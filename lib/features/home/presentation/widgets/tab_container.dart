
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_one_figma/core/themes/colors/app_colors.dart';

class TabContainer extends StatelessWidget {

  String? text;
  double? height;
  double? width;
  Color? color;
  Color? textColor;

  TabContainer({super.key,this.text,this.height,this.width,this.color,this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minWidth: 60,maxWidth: 100),
      //width: width ?? 45,
      height: height?? 30,
      decoration: BoxDecoration(
        color: color?? AppColors.purple,
        borderRadius: BorderRadius.circular(50),  
      ),
      child: Center(
        child: Text(
          text ??'All',
          style: GoogleFonts.raleway(
             textStyle: Theme.of(context).textTheme.displayLarge,
             fontSize: 14,
             color:textColor
             ?? Colors.white,
             fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}