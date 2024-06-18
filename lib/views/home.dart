import 'package:flutter/material.dart';
import 'package:machine_test/views/custom_bottom_navbar.dart';
import 'package:machine_test/views/home/home_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedPageIndex = 0;

  List screens = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color.fromRGBO(244, 247, 250, 1),
      bottomNavigationBar: CustomBottomNavBar(
        selectedPageIndex: selectedPageIndex,
      ),
      body: screens[selectedPageIndex],
    );
  }
}
