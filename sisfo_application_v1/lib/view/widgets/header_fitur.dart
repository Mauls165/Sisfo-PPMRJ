import 'package:flutter/material.dart';
import 'package:sisfo_application_v1/view/Fitur/lorong.dart';
import 'package:sisfo_application_v1/view/Fitur/monitoring.dart';

import '../../theme/constant.dart';
import '../Fitur/izin/izin.dart';
import '../Fitur/presence/all_presence.dart';
import 'button_menu.dart';

class HeaderFeature extends StatelessWidget {
  final String title;
  final int currentIndex;
  const HeaderFeature(
      {super.key, required this.title, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        _buildMenuCard(currentIndex, context),
        HeaderTitle(title),
      ],
    );
  }
}

Widget HeaderTitle(String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 32),
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      width: double.maxFinite,
      decoration: BoxDec.greenBoxDecoration(),
      child: Text(
        title,
        style: AppTextStyle.HeaderTxt(1, fontSize: 18, color: AppTheme.white),
        textAlign: TextAlign.center,
      ),
    ),
  );
}

Widget _buildMenuCard(int currentIndex, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 32, right: 32, top: 62),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ButtonMenu(
          text: 'Presensi',
          index: 1,
          currentIndex: currentIndex,
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const AllPresence()),
            );
            // Navigator.pushNamed(context, '/all_presence');
          },
        ),
        ButtonMenu(
          text: 'Izin',
          index: 2,
          currentIndex: currentIndex,
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const IzinPage()),
            );
            // Navigator.pushNamed(context, '/izin');
          },
        ),
        ButtonMenu(
          text: 'Lorong',
          index: 3,
          currentIndex: currentIndex,
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const Lorong()),
            );
            // Navigator.pushNamed(context, '/lorong');
          },
        ),
        ButtonMenu(
          text: 'Monitoring',
          index: 4,
          currentIndex: currentIndex,
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const Monitoring()),
            );
            // Navigator.pushNamed(context, '/monitoring');
          },
        ),
      ],
    ),
  );
}
