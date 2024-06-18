import 'package:flutter/material.dart';
import 'package:machine_test/utils/constant_colors.dart';
import 'package:machine_test/views/home/navbar_item.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key, required this.selectedPageIndex});

  final int selectedPageIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      decoration: const BoxDecoration(
        color: whiteColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 1),
            blurRadius: 4,
            spreadRadius: 0,
            color: Color.fromRGBO(0, 0, 0, 0.25),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavBarItem(
            title: 'Home',
            imageName: 'home',
            selectedPageIndex: selectedPageIndex,
            index: 0,
          ),
          NavBarItem(
            title: 'My Courses',
            imageName: 'book',
            selectedPageIndex: selectedPageIndex,
            index: 1,
          ),
          NavBarItem(
            title: 'Mentors',
            imageName: 'ChatsTeardrop',
            selectedPageIndex: selectedPageIndex,
            index: 2,
          ),
          NavBarItem(
            title: 'Profile',
            imageName: 'profile',
            selectedPageIndex: selectedPageIndex,
            index: 3,
          ),
        ],
      ),
    );
  }
}
