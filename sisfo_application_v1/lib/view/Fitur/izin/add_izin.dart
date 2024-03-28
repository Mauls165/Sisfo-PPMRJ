import 'package:flutter/material.dart';
import 'package:sisfo_application_v1/theme/constant.dart';
import 'package:sisfo_application_v1/view/widgets/header_fitur.dart';

class Add_Izin extends StatefulWidget {
  const Add_Izin({super.key});

  @override
  State<Add_Izin> createState() => _Add_IzinState();
}

class _Add_IzinState extends State<Add_Izin> {
  String? presensiOption;
  String? kategoriOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderFeature(title: 'Buat Izin', currentIndex: 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(16),
                decoration: BoxDec.ShadowBox(),
                child: Column(
                  children: [
                    Text(
                      'NB : \n'
                      '1. Silahkan izin dengan sebenar-benarnya dan penuh tanggung jawab\n'
                      '2. Bagi yang izin, mudah-mudahan lancar barokah, dan diampuni dosanya\n'
                      '3. Bagi yang izin karena sakit, mudah-mudahan Allah paring sembuh dan sehat barokah\n'
                      '4. Bagi yang izin pulang, jangan lupa meminta SS\n'
                      '5. Bagi yang mengajar prasaringan/musyawarah tidak perlu izin\n'
                      '6. Jika memungkinkan, mengikuti KBM melalui SDC\n'
                      '7. Ijin ini akan dikirim otomatis via WA ke Koor Lorong\n',
                      style: AppTextStyle.BodyTxt(),
                    ),
                    _buildCardData()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDropdown(
      {required String title,
      required String? selectedOption,
      required String label,
      required List<String> options,
      required Function(String?) onChanged}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyle.BodyTxt(),
          ),
          SizedBox(height: 8),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: AppTheme.gray),
              borderRadius: BorderRadius.circular(10),
            ),
            child: DropdownButton<String>(
              value: selectedOption,
              hint: Text(
                label,
                style: AppTextStyle.InUptxt(),
              ),
              isExpanded: true,
              icon: null,
              underline: Container(),
              onChanged: onChanged,
              items: options.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: AppTextStyle.BodyTxt(),
                  ),
                );
              }).toList(),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCardData() {
    return Column(
      children: [
        _buildDropdown(
          title: 'Presensi untuk diajukan izin',
          selectedOption: presensiOption,
          label: 'Pilih presensi',
          options: [
            'KBM Subuh',
            'KBM Malam',
          ],
          onChanged: (String? newValue) {
            setState(() {
              presensiOption = newValue;
            });
          },
        ),
        _buildDropdown(
          title: 'Kategori alasan',
          selectedOption: kategoriOption,
          label: 'Pilih kategori alasan',
          options: [
            'Sakit',
            'Pulang',
            'Test',
          ],
          onChanged: (String? newValue) {
            setState(() {
              kategoriOption = newValue;
            });
          },
        ),
        _buildAlasan(title: 'Alasan', label: 'Cth : Sakit pusing')
      ],
    );
  }

  Widget _buildAlasan({required String title, required String label}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyle.BodyTxt(),
          ),
          SizedBox(height: 8),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: double.maxFinite,
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: AppTheme.gray),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              maxLines: 5, // Atur jumlah baris maksimum
              decoration: InputDecoration(
                border:
                    InputBorder.none, // Hilangkan border bawaan dari TextField
                hintText: label, // Text yang ditampilkan saat TextField kosong
                hintStyle: AppTextStyle.InUptxt(), // Gaya teks untuk hint
              ),
              style: AppTextStyle.InUptxt(), // Gaya teks untuk input teks
            ),
          ),
        ],
      ),
    );
  }
}
