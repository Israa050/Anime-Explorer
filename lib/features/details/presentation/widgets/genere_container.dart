import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/themes/styles/styles.dart';

class GenereContainer extends StatelessWidget {
  String? text;
  GenereContainer({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.37.sp,
      width: 98.sp,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        color: Color(0xff554A71),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 4,
            spreadRadius: 0,
            color: Color(0xff000000).withValues(alpha: 0.25),
          ),
        ],
      ),
      child: Center(
        child: Text(
          text?? 'Mystery',
          style: GoogleFonts.raleway(
            textStyle: TextStyles.font13WhiteMedium,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
