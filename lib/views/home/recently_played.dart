import 'package:flutter/material.dart';
import 'package:machine_test/utils/constant_colors.dart';
import 'package:machine_test/views/home/title.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class RecentlyPlayed extends StatelessWidget {
  const RecentlyPlayed({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(
            left: 16,
          ),
          child: SectionTitle(title: 'Recently Played'),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 10, right: 16),
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: borderColor,
              ),
            ),
            child: Row(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/img5.png'),
                    ),
                    const Positioned.fill(
                      child: Icon(
                        Icons.play_arrow,
                        color: whiteColor,
                        size: 26,
                      ),
                    )
                  ],
                ),
                const SizedBox(width: 16),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'OET Beginner special class \nand Preparation Tips',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      '20:45 / 35 :12 ',
                      style: TextStyle(
                        fontSize: 10,
                        color: Color.fromRGBO(106, 116, 135, 1),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                SizedBox(
                  // height: 8,
                  child: CircularPercentIndicator(
                    radius: 25.0,
                    reverse: true,
                    lineWidth: 8.0,
                    animation: true,
                    percent: 0.35,
                    center: const Text(
                      "35 %",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 10.0,
                      ),
                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: Colors.blue,
                  ),
                ),
                const SizedBox(
                  width: 16,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
