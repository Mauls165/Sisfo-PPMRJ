import 'package:flutter/material.dart';
import 'package:sisfo_application_v1/view/widgets/header_fitur.dart';

import '../../../theme/constant.dart';
// import '../../HomePage/main_app.dart';

class IzinPage extends StatelessWidget {
  const IzinPage({super.key});

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
              HeaderFeature(title: 'Izin Saya', currentIndex: 2),
              _buildIzinCard('+ Buat izin', context),
              _buildIzinCard('+ Buat izin berjangka', context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildIzinCard(String label, BuildContext context) {
  return Padding(
    //_buildIzinCard()
    padding: const EdgeInsets.symmetric(
      horizontal: 32,
      vertical: 8,
    ),
    child: Container(
      width: double.maxFinite,
      decoration: BoxDec.ShadowBox(),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _IzinButton(label, context),
            dataTable(),
          ],
        ),
      ),
    ),
  );
}

Widget _IzinButton(String label, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, '/add_izin');
    },
    child: Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDec.greenBoxDecoration(),
      child: Text(
        label,
        style: AppTextStyle.HeaderTxt(1, fontSize: 18, color: AppTheme.white),
        textAlign: TextAlign.center,
      ),
    ),
  );
}

Widget dataTable() {
  List<Map<String, String>> data = [
    {
      'nama': 'Azka Nanda Puspita',
      'KBM': 'KBM Subuh 12/12',
      'alasan': '[Tugas - Menginap]',
      'status': 'Approved',
    },
    {
      'nama': 'Azka Nanda Puspita',
      'KBM': 'KBM Subuh 10/10',
      'alasan': '[Tugas]',
      'status': 'Pending',
    },
    {
      'nama': 'Azka Nanda Puspita',
      'KBM': 'KBM Subuh 11/11',
      'alasan': '[Tugas]',
      'status': 'Canceled',
    },
    // Tambahkan data lainnya sesuai kebutuhan
  ];

  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: DataTable(
      columnSpacing: 20,
      columns: [
        DataColumn(
          label: Text(
            'Nama',
            style: AppTextStyle.BodyTxt(),
          ),
        ),
        DataColumn(
          label: Text(
            'Alasan',
            style: AppTextStyle.BodyTxt(),
          ),
        ),
        DataColumn(
          label: Text(
            'Status',
            style: AppTextStyle.BodyTxt(),
          ),
        ),
      ],
      rows: data.map((item) {
        return DataRow(
          cells: [
            DataCell(
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item['nama'] ?? '',
                      style: AppTextStyle.BodyTxt(),
                    ),
                    Text(
                      item['KBM'] ?? '',
                      style: AppTextStyle.InUptxt(),
                    )
                  ],
                ),
              ),
            ),
            DataCell(
              Text(
                item['alasan'] ?? '',
                style: AppTextStyle.BodyTxt(),
              ),
            ),
            DataCell(
              Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                  color: _getStatusColor(item['status']!),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  item['status'] ?? '',
                  style: AppTextStyle.BodyTxt(),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        );
      }).toList(),
    ),
  );
}

Color _getStatusColor(String status) {
  switch (status) {
    case 'Approved':
      return AppTheme.green;
    case 'Pending':
      return AppTheme.yellow;
    case 'Canceled':
      return AppTheme.red;
    default:
      return Colors.transparent; // default color if status is unknown
  }
}
