
import 'package:flutter/material.dart';
import 'bottom_nav_item.dart';

class HomeCustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const HomeCustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavItem(
            iconPath: 'assets/svgs/home-2.svg',
            label: "Home",
            isSelected: currentIndex == 0,
            onTap: () => onTap(0),
            screenWidth: screenWidth,
          ),
          NavItem(
            iconPath: 'assets/svgs/library.svg',
            label: "Library",
            isSelected: currentIndex == 1,
            onTap: () => onTap(1),
            screenWidth: screenWidth,
          ),
          NavItem(
            iconPath: 'assets/svgs/search-normal.svg',
            label: "Search",
            isSelected: currentIndex == 2,
            onTap: () => onTap(2),
            screenWidth: screenWidth,
          ),
          NavItem(
            iconPath: 'assets/svgs/network.svg',
            label: "Explore",
            isSelected: currentIndex == 3,
            onTap: () => onTap(3),
            screenWidth: screenWidth,
          ),
          NavItem(
            iconPath: 'assets/svgs/setting.svg',
            label: "Settings",
            isSelected: currentIndex == 4,
            onTap: () => onTap(4),
            screenWidth: screenWidth,
          ),
        ],
      ),
    );
  }
}