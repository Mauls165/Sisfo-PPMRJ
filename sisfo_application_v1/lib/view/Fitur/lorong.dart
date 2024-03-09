import 'package:flutter/material.dart';
import 'package:sisfo_application_v1/theme/constant.dart';
import 'package:sisfo_application_v1/view/widgets/header_fitur.dart';

import '../HomePage/main_app.dart';

class Lorong extends StatelessWidget {
  const Lorong({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Ketika pengguna menekan tombol back
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const MainHomePage()),
        );
        return true; // Kembali ke halaman sebelumnya
      },
      child: Scaffold(
        body: Column(
          children: [
            HeaderFeature(
              title: 'Lorong Saya',
              currentIndex: 3,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Container(
                width: double.infinity,
                decoration: BoxDec.ShadowBox(), //ganti boxdec shadow
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildHeader(),
                      Text(
                        'Daftar Anggota',
                        style:
                            AppTextStyle.BodyTxt(fontsWeight: FontWeight.w600),
                      ),
                      _buildUsercard(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildHeader() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 20),
    child: Container(
      padding: EdgeInsets.all(12),
      width: double.maxFinite,
      decoration: BoxDec.ShadowBox(), //ganti boxdec shadow
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Lorong User',
            style: AppTextStyle.BodyTxt(),
          ),
          Text(
            'Koor Lorong : User',
            style: AppTextStyle.BodyTxt(),
          ),
          Text(
            'Anggota xx',
            style: AppTextStyle.BodyTxt(),
          ),
        ],
      ),
    ),
  );
}

Widget _buildUsercard() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: Column(
      //ubah list view
      children: [
        _buidlUser('UserName1'),
        _buidlUser('UserName2'),
        _buidlUser('UserName3'),
        _buidlUser('UserName4'),
      ],
    ),
  );
}

Widget _buidlUser(String user) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: Container(
      padding: EdgeInsets.all(8),
      width: double.maxFinite,
      decoration: BoxDec.ShadowBox(), //ganti shawdow box
      child: Row(
        children: [
          CircleAvatar(
            radius: 18,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              user,
              style: AppTextStyle.BodyTxt(),
            ),
          ),
          Text(
            'xxxx',
            style: AppTextStyle.BodyTxt(),
          ),
        ],
      ),
    ),
  );
}
