
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimePoster extends StatelessWidget {
  const AnimePoster({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          SizedBox(
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
              children: [
              SizedBox(
                height: MediaQuery.of(context).size.height*0.75,
                width: double.infinity,
                child: Image.asset('assets/images/demon_slayer.png',fit: BoxFit.cover,),
              ),
              ],
              ),
            ),
          ),

       Positioned(top: 430.sp,left: 95.sp,child: Image.asset('assets/images/demon_slayer_logo.png',),),

        ],
      );
  }
}