import 'package:flutter/material.dart';
import 'package:machine_test/utils/constant_colors.dart';

class MockTestItem extends StatelessWidget {
  const MockTestItem({super.key, required this.title, required this.imageName});
  final String title;
  final String imageName;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: borderColor,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(width: 1),
          Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              color: borderColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Image.asset(
                'assets/$imageName.png',
                width: 16,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}
