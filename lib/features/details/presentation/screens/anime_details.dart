import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_one_figma/core/helper/spacing.dart';
import 'package:task_one_figma/features/details/presentation/widgets/anime_poster.dart';
import 'package:task_one_figma/features/details/presentation/widgets/custom_nav.dart';
import 'package:task_one_figma/features/details/presentation/widgets/description_section.dart';
import 'package:task_one_figma/features/details/presentation/widgets/genere_container.dart';
import 'package:task_one_figma/features/details/presentation/widgets/status_section.dart';

class AnimeDetails extends StatelessWidget {
  const AnimeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: SizedBox(
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
          children: [

            SizedBox(height: 665.h,child: AnimePoster()),
         
          verticalPadding(40.h),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GenereContainer(text: 'Dark Fantasy',),
              GenereContainer(text: 'Action',),
              GenereContainer(text: 'Adventure',),
            ],
          ),
      
          verticalPadding(23.sp,),
      
          Divider(thickness: 1,indent: 16.sp,endIndent: 16.sp,),
      
          StatusSection(),
      
          Divider(thickness: 1,indent: 16.sp,endIndent: 16.sp,),
      
          DescriptionSection(),
      
          verticalPadding(12.h),          
          
          ],
          ),
        ),
      ),
    );
  }
}
