import 'package:flutter/material.dart';
import 'package:sisfo_application_v1/view/widgets/header_fitur.dart';
// import '../../HomePage/main_app.dart';
import '../../widgets/weekly_table.dart';

class AllPresence extends StatelessWidget {
  const AllPresence({super.key});

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
        body: Column(
          children: [
            HeaderFeature(
              title: 'Presensi Terbaru',
              currentIndex: 1,
            ),
            _WeeklyCard(),
          ],
        ),
      ),
    );
  }
}

Widget _WeeklyCard() {
  return const Expanded(
    //_buildWeeklyCard()
    child: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              WeeklyTable(table_title: 'KBM Subuh (00.00%)'),
              WeeklyTable(table_title: 'KBM Malam (00.00%)'),
              WeeklyTable(table_title: 'Muda/i Daerah (00.00%)'),
              WeeklyTable(table_title: '1/3 Malam (00.00%)'),
            ],
          ),
        ),
      ],
    ),
  );
}
