import 'package:flutter/material.dart';
import 'package:machine_test/views/home/mock_test_item.dart';
import 'package:machine_test/views/home/title.dart';

class MockTests extends StatelessWidget {
  const MockTests({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(title: 'Mock Tests'),
          SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              MockTestItem(
                title: 'Reading',
                imageName: 'reading',
              ),
              SizedBox(width: 16),
              MockTestItem(
                title: 'Listening',
                imageName: 'listening',
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              MockTestItem(
                title: 'Writing',
                imageName: 'writing',
              ),
              SizedBox(width: 16),
              MockTestItem(
                title: 'Speaking',
                imageName: 'speaking',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
