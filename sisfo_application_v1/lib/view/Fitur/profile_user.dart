import 'package:flutter/material.dart';
import 'package:sisfo_application_v1/theme/constant.dart';
import 'package:sisfo_application_v1/view/widgets/header_fitur.dart';

class ProfileUser extends StatelessWidget {
  const ProfileUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderFeature(
              title: 'Profile User',
              currentIndex: 0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: _buildProfileUser(),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildProfileUser() {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(20),
    decoration: BoxDec.ShadowBox(),
    child: Column(
      children: [
        _buildProfileCard('Nama', 'Username'),
        _buildProfileCard('Jenis Kelamin', 'Laki-Laki'),
        _buildProfileCard('Tanggal Lahir', 'xx-xx-xxxx'),
        _buildProfileCard('No HP (WA)', '081234567890'),
        _buildProfileCard('Email', 'Username@tester.com'),
        _buildProfileCard('Dapukan', 'Koor Lorong'),
        _buildProfileCard('Angkatan', '2020'),
        _buildProfileCard('NIS', 'xxxxxxx'),
        _buildProfileCard('Lorong', 'Lorong User'),
      ],
    ),
  );
}

Widget _buildProfileCard(String title, String label) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.BodyTxt(fontsWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(width: 2, color: AppTheme.gray),
              borderRadius: BorderRadius.circular(10)),
          child: Text(
            label,
            style: AppTextStyle.BodyTxt(),
          ),
        ),
      ],
    ),
  );
}
