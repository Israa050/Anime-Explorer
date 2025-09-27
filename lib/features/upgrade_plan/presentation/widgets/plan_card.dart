import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:task_one_figma/core/helper/spacing.dart";
import "package:task_one_figma/core/themes/colors/app_colors.dart";
import "package:task_one_figma/features/upgrade_plan/presentation/widgets/plan_details.dart";

class PlanCard extends StatefulWidget {

   String? price;
   Color? color;
   String? text;
   Color? textColor;
   Color? bodyColor;
   bool isChecked;
   PlanCard({super.key,required this.isChecked,this.price,this.color,this.text,this.textColor,this.bodyColor});

  @override
  State<PlanCard> createState() => _PlanCardState();
}

class _PlanCardState extends State<PlanCard> {
  bool isChecked = false;

  @override
  void initState() {
    super.initState();
    isChecked = widget.isChecked;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 102.h,
      width: 342.w,
      decoration: BoxDecoration(
        color:widget.color?? AppColors.darkPurple,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Image.asset('assets/images/files.png'),
          horizontalPadding(22.w),
          planDetails(context,widget.price?? '5',widget.text?? 'Monthly',widget.textColor,widget.bodyColor),
        
          Material(
            color: Colors.transparent,
            child: SizedBox(
              width: 40,
              child: Stack(
                children:[ 
                  Positioned(
                    top: 5.sp,
                    right: 1,
                    child: Checkbox(
                    activeColor: AppColors.purple,
                    checkColor: Color(0xff1D1850),
                    value: isChecked,
                    side: BorderSide(
                      width: 1.5,
                     // color: Color.fromARGB(255, 131, 193, 132),
                      color: Colors.black87,
                      strokeAlign: BorderSide.strokeAlignInside
                    ),
                    onChanged: (value) {

                      setState(() {
                        isChecked = !isChecked;
                      });
                      
                    },
                    shape: CircleBorder(),
                    ),
                  ),
                ]
              ),
            ),
          ),
        ],
      ),
    );
  }
}
