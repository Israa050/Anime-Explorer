import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/themes/styles/styles.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            SvgPicture.asset('assets/svgs/watch.svg'),
            horizontalPadding(7),
            Text(
              ' 2.3M view',
              style: TextStyles.font14WhiteRegular
            ),
          ],
        ),

        Row(
          children: [
            SvgPicture.asset('assets/svgs/HandsClapping.svg'),
            horizontalPadding(7),
            Text(
              ' 2K clap',
              style: TextStyles.font14WhiteRegular
            ),
          ],
        ),

        Row(
          children: [
            SvgPicture.asset('assets/svgs/seasons.svg'),
            horizontalPadding(7),
            Text(
              ' 4 Seasons',
               style: TextStyles.font14WhiteRegular
            ),
          ],
        ),
      ],
    );
  }
}
