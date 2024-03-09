import 'package:flutter/material.dart';
import 'package:sisfo_application_v1/view/Fitur/profile_user.dart';
import 'package:sisfo_application_v1/view/Fitur/report_user.dart';
import 'package:sisfo_application_v1/view/HomePage/home_page.dart';
import 'package:sisfo_application_v1/view/widgets/bottom_navbar.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomePage(),
    ReportUser(),
    ProfileUser(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      // endDrawer: SideBarMenu(),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(
            () {
              _currentIndex = index;
            },
          );
        },
      ),
    );
  }
}
