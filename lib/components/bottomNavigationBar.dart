import 'package:cardify/constants/Assets.dart';
import 'package:cardify/constants/Pallete.dart';
import 'package:flutter/material.dart';

class CardifyBottomNavigationBar extends StatelessWidget {
  // final int page;
  final Function(int) onPageChange;
  const CardifyBottomNavigationBar({super.key, required this.onPageChange});

  @override
  Widget build(BuildContext context) {
    // final bottomRoutes = ['/dashboard', '/profile', '/profile'];
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      child: BottomNavigationBar(
        backgroundColor: Pallete.blue,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(Assets.home, width: 30, height: 33.75),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(Assets.plus, width: 40, height: 40),
            label: "Plus",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(Assets.profile, width: 31, height: 34),
            label: "Profile",
          ),
        ],
        currentIndex: 0,
        onTap: (index) {
          onPageChange(index);
        },
      ),
    );
  }
}
