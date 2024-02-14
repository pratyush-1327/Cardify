import 'package:cardify/components/appbar.dart';
import 'package:cardify/components/bottomNavigationBar.dart';
import 'package:cardify/constants/Assets.dart';
import 'package:cardify/screens/dashboard/dashboard_screen.dart';
import 'package:cardify/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  final List<Widget> childrens = [
    const DashboardScreen(),
    const ProfileScreen(),
    const ProfileScreen()
  ];
  int _page = 0;
  void onPageChange(int index) {
    setState(() {
      _page = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage(Assets.bgTheme),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SafeArea(
              child: Column(
                children: [
                  const CardifyAppBar(),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        child: IntrinsicHeight(
                          child: IndexedStack(
                            index: _page,
                            children: childrens,
                          ),
                        ),
                      ),
                    ),
                  ),
                  CardifyBottomNavigationBar(
                    onPageChange: onPageChange,
                  )
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
