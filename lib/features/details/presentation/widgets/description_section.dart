import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptionSection extends StatelessWidget {

  String description = "Demon Slayer: Kimetsu no Yaiba follows Tanjiro, a kind-hearted boy who becomes a demon slayer after his family is slaughtered and his sister is turned into a demon. Experience breathtaking battles, stunning animation, and an emotional journey of courage and hope.";
  DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [

        SvgPicture.asset('assets/svgs/fire.svg'),

         SizedBox(
          width: 307.sp,
           child: Text(
            maxLines: 8,
             description,
            style: GoogleFonts.raleway(
              textStyle: Theme.of(context).textTheme.bodySmall,
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
           ),
         ),

      ],
    );
  }
}