import 'package:flutter/material.dart';
import 'package:cardify/constants/Assets.dart';
import 'package:cardify/constants/Pallete.dart';

class CardifyBottomNavigationBar extends StatelessWidget {
  final Function(int) onPageChange;
  const CardifyBottomNavigationBar({super.key, required this.onPageChange});

  @override
  Widget build(BuildContext context) {
    // Define your gradient colors here
    final gradientColors = [
      Pallete.blue,
      Pallete.pink,
    ]; // Example gradient colors

    return Container(
      margin: const EdgeInsets.all(10.0),
      color: Colors.transparent,
      child: Stack(
        children: [
          // Gradient Container
          Container(
            height: kBottomNavigationBarHeight +
                20, // Use the default height for BottomNavigationBar
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              gradient: LinearGradient(
                colors: gradientColors,
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
          ),
          // BottomNavigationBar with transparent background
          BottomNavigationBar(
            backgroundColor:
                Colors.transparent, // Make the background transparent
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(Assets.home, width: 40, height: 40),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(Assets.plus, width: 40, height: 40),
                label: "Plus",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(Assets.user, width: 40, height: 40),
                label: "User",
              ),
            ],
            currentIndex: 0,
            onTap: (index) {
              onPageChange(index);
            },
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0, // Remove shadow if not needed
            type: BottomNavigationBarType
                .fixed, // Use fixed when having more than three items
          ),
        ],
      ),
    );
  }
}
