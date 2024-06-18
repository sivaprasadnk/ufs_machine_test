import 'package:flutter/material.dart';
import 'package:machine_test/utils/constant_colors.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              // gradient: LinearGradient(
              //   begin: Alignment.bottomLeft,
              //   end: Alignment.topRight,
              //   colors: [
              //     Color.fromRGBO(17, 119, 225, 0),
              //     Color.fromRGBO(15, 70, 142, 1),
              //   ],
              // ),
              ),
          child: Image.asset(
            'assets/img1.png',
            width: width,
            fit: BoxFit.fitWidth,
          ),
        ),
        Positioned.fill(
          left: 10,
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset('assets/img2.png'),
          ),
        ),
        Positioned.fill(
          top: 50,
          child: Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              height: 38,
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                    child: Image.asset('assets/img4.png'),
                  ),
                  const SizedBox(width: 5),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi Ajay',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: whiteColor,
                        ),
                      ),
                      Text(
                        'Tuesday, 23 April 2024',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color.fromRGBO(255, 255, 255, .85),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(27),
                      color: const Color.fromRGBO(0, 0, 0, 0.5),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/search.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/bell.png'),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                ],
              ),
            ),
          ),
        ),
        Positioned.fill(
          left: 16,
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset('assets/img3.png'),
          ),
        ),
        const Positioned.fill(
          bottom: 20,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Hello, I’m Breff',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: whiteColor,
                  ),
                ),
                Text(
                  'Ask all your career & exams \ndoubts to me',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(255, 255, 255, 0.85),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned.fill(
          right: 16,
          bottom: 25,
          child: Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 28,
              width: 59,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color.fromRGBO(222, 239, 255, 1),
                    Color.fromRGBO(173, 199, 239, 1),
                    Color.fromRGBO(95, 154, 243, 1),
                  ],
                ),
                borderRadius: BorderRadius.circular(60),
              ),
              child: const Center(
                child: Text(
                  'Ask',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: Color.fromRGBO(33, 42, 54, 1),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
