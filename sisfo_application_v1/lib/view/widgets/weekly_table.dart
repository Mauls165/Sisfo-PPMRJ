import 'package:flutter/material.dart';

import '../../theme/constant.dart';
import '../Fitur/presence/detail_presence.dart';

class WeeklyTable extends StatelessWidget {
  final String table_title;
  const WeeklyTable({super.key, required this.table_title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPresence(tableTitle: table_title),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 24),
        child: Container(
          width: 330,
          padding: EdgeInsets.symmetric(vertical: 18),
          decoration: BoxDec.ShadowBox(),
          child: _buildTable(table_title),
        ),
      ),
    );
  }

  Widget _buildTable(String Title) {
    return Column(
      children: [
        _buildTitle(Title),
        _buildDataTable(),
      ],
    );
  }

  Widget _buildTitle(String title) {
    return Text(
      title,
      style: AppTextStyle.BodyTxt(fontsWeight: FontWeight.w600),
    );
  }

  Widget _buildDataTable() {
    return Container(
      child: DataTable(
        columns: [
          DataColumn(
              label: Text(
            'Tanggal',
            style: AppTextStyle.BodyTxt(),
          )),
          DataColumn(
              label: Text(
            'Status',
            style: AppTextStyle.BodyTxt(),
          )),
          DataColumn(
              label: Text(
            'Telat',
            style: AppTextStyle.BodyTxt(),
          )),
        ],
        rows: [
          //rubah ke listview
          _buildDataRow('2024-02-13', 'Hadir', 'Tidak'),
          _buildDataRow('2024-02-13', 'Hadir', 'Tidak'),
          _buildDataRow('2024-02-13', 'Hadir', 'Tidak'),
          _buildDataRow('2024-02-13', 'Hadir', 'Tidak'),
          _buildDataRow('2024-02-13', 'Hadir', 'Tidak'),
          _buildDataRow('2024-02-13', 'Hadir', 'Tidak'),
          // Tambahkan baris lain sesuai kebutuhan
        ],
      ),
    );
  }

  DataRow _buildDataRow(String tanggal, String status, String telat) {
    return DataRow(cells: [
      DataCell(Text(
        tanggal,
        style: AppTextStyle.BodyTxt(),
      )),
      DataCell(Text(
        status,
        style: AppTextStyle.BodyTxt(),
      )),
      DataCell(Text(
        telat,
        style: AppTextStyle.BodyTxt(),
      )),
    ]);
  }
}
