import 'package:flutter/material.dart';
import 'package:machine_test/utils/constant_colors.dart';
import 'package:machine_test/views/home/title.dart';

class RecommendedCourses extends StatelessWidget {
  const RecommendedCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SectionTitle(title: 'Recommended Courses'),
          const SizedBox(height: 5),
          SizedBox(
            height: 225,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  width: 190,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: borderColor,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/course.png',
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'OET Beginner special class and Perparation Tips',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Color.fromRGBO(40, 59, 82, 1),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Image.asset('assets/Books.png', height: 12),
                            const SizedBox(width: 5),
                            const Text(
                              "54",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Color.fromRGBO(106, 116, 135, 1),
                              ),
                            ),
                            const SizedBox(width: 20),
                            Image.asset('assets/Clock.png', height: 12),
                            const SizedBox(width: 5),
                            const Text(
                              "48",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Color.fromRGBO(106, 116, 135, 1),
                              ),
                            ),
                            const Text(
                              " Hrs",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color.fromRGBO(106, 116, 135, 1),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              '₹ 5000',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                              ),
                            ),
                            const Spacer(),
                            Image.asset(
                              "assets/Star.png",
                              height: 18,
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              '4.5',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(width: 5),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
