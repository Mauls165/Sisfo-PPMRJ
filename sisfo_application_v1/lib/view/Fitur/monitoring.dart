import 'package:flutter/material.dart';
import 'package:sisfo_application_v1/view/widgets/header_fitur.dart';
import '../../theme/constant.dart';
// import '../HomePage/main_app.dart';

class Monitoring extends StatelessWidget {
  const Monitoring({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Ketika pengguna menekan tombol back
        // Navigator.pushReplacement(
        //   context,
        //   MaterialPageRoute(builder: (context) => const MainHomePage()),
        // );
        return true; // Kembali ke halaman sebelumnya
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              HeaderFeature(title: 'Monitoring', currentIndex: 4),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Container(
                  width: double.maxFinite,
                  decoration: BoxDec.ShadowBox(),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        _buildSectionTitle('UserName'),
                        _buildMonitoringCard(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildSectionTitle(String title) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 8),
    width: double.infinity,
    decoration: BoxDec.greenBoxDecoration(),
    child: Text(
      title,
      style: AppTextStyle.HeaderTxt(1, fontSize: 18, color: AppTheme.white),
      textAlign: TextAlign.center,
    ),
  );
}

Widget _buildMonitoringCard() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSubSectionTitle('Pencapaian Materi'),
        SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.all(10),
          width: double.infinity,
          decoration: BoxDec.ShadowBox(),
          child: _buildMonitoringReport(),
        ),
      ],
    ),
  );
}

Widget _buildSubSectionTitle(String title) {
  return Text(
    title,
    style: AppTextStyle.BodyTxt(fontsWeight: FontWeight.w600),
  );
}

Widget _buildMonitoringReport() {
  return Column(
    children: [
      //ubah ke listview
      _buildHeaderRow(['Materi', 'Pencapaian', '%']),
      _buildDataRow('Al-Quran', ['29 / 605', '40%']),
      _buildDataRow('Al-Quran', ['29 / 605', '40%']),
      _buildDataRow('Al-Quran', ['29 / 605', '40%']),
      _buildDataRow('Al-Quran', ['29 / 605', '40%']),
      _buildDataRow('Al-Quran', ['29 / 605', '40%']),
      _buildDataRow('Al-Quran', ['29 / 605', '40%']),
      _buildDataRow('Al-Quran', ['29 / 605', '40%']),
      _buildDataRow('Al-Quran', ['29 / 605', '40%']),
      _buildDataRow('Al-Quran', ['29 / 605', '40%']),
      _buildDataRow('Al-Quran', ['29 / 605', '40%']),
      _buildDataRow('Al-Quran', ['29 / 605', '40%']),
      _buildDataRow('Al-Quran', ['29 / 605', '40%']),
      _buildDataRow('Al-Quran', ['29 / 605', '40%']),
      _buildDataRow('Al-Quran', ['29 / 605', '40%']),
      _buildDataRow('Al-Quran', ['29 / 605', '40%']),
      _buildDataRow('Al-Quran', ['29 / 605', '40%']),
      _buildDataRow('Al-Quran', ['29 / 605', '40%']),
      _buildDataRow('Al-Quran', ['29 / 605', '40%']),
      _buildDataRow('Al-Quran', ['29 / 605', '40%']),
      _buildDataRow('Al-Quran', ['29 / 605', '40%']),
      _buildDataRow('Al-Quran', ['29 / 605', '40%']),
      _buildDataRow('Al-Quran', ['29 / 605', '40%']),
    ],
  );
}

Widget _buildHeaderRow(List<String> data) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      children: List.generate(
        data.length,
        (index) => Expanded(
          flex: 1,
          child: Text(
            data[index],
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ),
  );
}

Widget _buildDataRow(String month, List<String> data) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            month,
            textAlign: TextAlign.center,
          ),
        ),
        ...data.map(
          (value) => Expanded(
            flex: 1,
            child: Text(
              value,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    ),
  );
}
