import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:nano/assets/colors/colors.dart';
import 'package:nano/assets/constants/navItems.constants.dart';

class BottomNav extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const BottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: currentIndex,
      items: navItems,
      onTap: onTap,
      color: XColors.primary,
      backgroundColor: Colors.transparent,
      buttonBackgroundColor: XColors.primary,
      height: 75,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
    );
  }
}
