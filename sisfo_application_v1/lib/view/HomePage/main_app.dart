import 'package:flutter/material.dart';
import 'package:sisfo_application_v1/view/Fitur/profile_user.dart';
import 'package:sisfo_application_v1/view/Fitur/report_user.dart';
import 'package:sisfo_application_v1/view/HomePage/home_page.dart';
import 'package:sisfo_application_v1/view/widgets/bottom_navbar.dart';
import 'package:sisfo_application_v1/view_model/santriVM.dart';

class MainHomePage extends StatefulWidget {
  final int userId;
  // final SantriViewModel santriViewModel;
  const MainHomePage({
    super.key,
    required this.userId,
    // required this.santriViewModel
  });

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  int _currentIndex = 0;
  late List<Widget> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      HomePage(userId: widget.userId, santriViewModel: SantriViewModel()),
      ReportUser(),
      ProfileUser(userId: widget.userId, santriViewModel: SantriViewModel()),
    ];
  }

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
