
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_one_figma/core/themes/colors/app_colors.dart';

class HomeCustomNav extends StatefulWidget {
  const HomeCustomNav({super.key});

  @override
  State<HomeCustomNav> createState() => _HomeCustomNavState();
}

class _HomeCustomNavState extends State<HomeCustomNav> {

  int selectedIndex = 0;

  
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 66,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.transparent),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 34,
              width: 98,
              decoration: BoxDecoration(
                color: AppColors.purple,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset('assets/svgs/home-2.svg'),
                  Text(
                    'Home',
                    style: GoogleFonts.raleway(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
      
            SvgPicture.asset('assets/svgs/library.svg'),
            SvgPicture.asset('assets/svgs/search-normal.svg'),
            SvgPicture.asset('assets/svgs/network.svg'),
            SvgPicture.asset('assets/svgs/setting.svg'),
          ],
        ),
      );
  }
}