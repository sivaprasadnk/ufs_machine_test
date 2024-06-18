import 'package:flutter/material.dart';
import 'package:machine_test/views/home/explore_courses_btn.dart';
import 'package:machine_test/views/home/find_a_mentor.dart';
import 'package:machine_test/views/home/header.dart';
import 'package:machine_test/views/home/mock_tests.dart';
import 'package:machine_test/views/home/popular_courses.dart';
import 'package:machine_test/views/home/recently_played.dart';
import 'package:machine_test/views/home/recom_courses.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Header(),
          SizedBox(height: 16),
          RecentlyPlayed(),
          SizedBox(height: 16),
          ExploreCoursesBtn(),
          SizedBox(height: 16),
          FindaMentor(),
          SizedBox(height: 16),
          MockTests(),
          SizedBox(height: 10),
          PopularCourses(),
          SizedBox(height: 10),
          RecommendedCourses(),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
