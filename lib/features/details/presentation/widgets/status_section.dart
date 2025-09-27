import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_one_figma/core/helper/spacing.dart';

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
              style: GoogleFonts.raleway(
                textStyle: Theme.of(context).textTheme.bodySmall,
                color: Colors.white,
              ),
            ),
          ],
        ),

        Row(
          children: [
            SvgPicture.asset('assets/svgs/HandsClapping.svg'),
            horizontalPadding(7),
            Text(
              ' 2K clap',
              style: GoogleFonts.raleway(
                textStyle: Theme.of(context).textTheme.bodySmall,
                color: Colors.white,
              ),
            ),
          ],
        ),

        Row(
          children: [
            SvgPicture.asset('assets/svgs/seasons.svg'),
            horizontalPadding(7),
            Text(
              ' 4 Seasons',
              style: GoogleFonts.raleway(
                textStyle: Theme.of(context).textTheme.bodySmall,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
