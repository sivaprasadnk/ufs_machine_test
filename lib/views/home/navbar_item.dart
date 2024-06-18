import 'package:flutter/material.dart';
import 'package:machine_test/utils/constant_colors.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem(
      {super.key,
      required this.title,
      required this.imageName,
      required this.index,
      required this.selectedPageIndex});
  final String title;
  final String imageName;
  final int selectedPageIndex;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/$imageName.png',
          height: 24,
          color: index == selectedPageIndex ? activeBlueColor : greyColor,
        ),
        const SizedBox(height: 5),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 12,
            color: index == selectedPageIndex ? activeBlueColor : greyColor,
          ),
        ),
      ],
    );
  }
}
