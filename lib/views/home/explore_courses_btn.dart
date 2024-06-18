import 'package:flutter/material.dart';
import 'package:machine_test/utils/constant_colors.dart';

class ExploreCoursesBtn extends StatelessWidget {
  const ExploreCoursesBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(22, 129, 228, 1),
              Color.fromRGBO(0, 86, 214, 1),
            ],
          ),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Explore Courses",
              style: TextStyle(
                color: whiteColor,
                fontWeight: FontWeight.w700,
                fontSize: 14,
              ),
            ),
            SizedBox(width: 12),
            Icon(
              Icons.arrow_forward_ios,
              color: whiteColor,
              size: 12,
            )
          ],
        ),
      ),
    );
  }
}
