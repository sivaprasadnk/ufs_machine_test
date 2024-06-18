import 'package:flutter/material.dart';

class FindaMentor extends StatelessWidget {
  const FindaMentor({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Image.asset('assets/mentor.png'),
    );
  }
}
