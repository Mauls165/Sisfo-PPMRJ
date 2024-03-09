import 'package:flutter/material.dart';
import 'package:sisfo_application_v1/view/widgets/header_fitur.dart';

import '../../widgets/weekly_table.dart';

class DetailPresence extends StatelessWidget {
  final String tableTitle;
  const DetailPresence({super.key, required this.tableTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        HeaderFeature(
          title: 'Presensi Terbaru',
          currentIndex: 1,
        ),
        WeeklyTable(table_title: tableTitle)
      ],
    ));
  }
}
