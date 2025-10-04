import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/themes/styles/styles.dart';

class RatingTab extends StatelessWidget {
  const RatingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 20,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            SvgPicture.asset(
              'assets/svgs/star_review.svg',
              width: 10,
              height: 10,
            ),

            Center(
              child: Text(
                '5.0',
                textAlign: TextAlign.center,
                style: TextStyles.font12BlackSemiBold
              ),
            ),

            
          ],
        ),
      ),
    );
  }
}
