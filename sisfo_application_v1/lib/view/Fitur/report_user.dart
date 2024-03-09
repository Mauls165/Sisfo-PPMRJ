import 'package:flutter/material.dart';
import 'package:sisfo_application_v1/theme/constant.dart';
import 'package:sisfo_application_v1/view/widgets/header_fitur.dart';

class ReportUser extends StatelessWidget {
  const ReportUser({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderFeature(
              title: 'Report User',
              currentIndex: 0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Container(
                width: double.infinity,
                decoration: BoxDec.ShadowBox(),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      _buildSectionTitle('UserName'),
                      _buildPaymentCard(),
                      _buildPresenceCard(),
                      _buildMonitoringCard()
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
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

  Widget _buildPaymentCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSubSectionTitle('Pembayaran Shodaqoh'),
          SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDec.ShadowBox(),
            child: Column(
              children: [
                _buildPaymentReport('Periode', 'xxxx/xxxx'),
                _buildPaymentReport('Nominal', 'x,xxx,xxx'),
                _buildPaymentReport('Status', 'Belum Lunas'),
                _buildPaymentReport('Periode', 'xx,xxx'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPresenceCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSubSectionTitle('Presensi Kehadiran'),
          SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDec.ShadowBox(),
            child: _buildPresenceReport(),
          ),
        ],
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

  Widget _buildPaymentReport(String reportTitle, String reportData) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(child: Text(reportTitle)),
          Expanded(child: Text(reportData)),
        ],
      ),
    );
  }

  Widget _buildPresenceReport() {
    return Column(
      children: [
        //ubah ke listview
        _buildHeaderRow(['Bulan', 'KBM', 'H', 'I', 'A', '%']),
        _buildDataRow('Jan', ['50', '40', '10', '0', 'xxx%']),
        _buildDataRow('Feb', ['60', '45', '15', '2', 'xxx%']),
        _buildDataRow('Mar', ['55', '38', '12', '3', 'xxx%']),
        _buildDataRow('Apr', ['62', '42', '11', '1', 'xxx%']),
        _buildDataRow('May', ['58', '39', '13', '2', 'xxx%']),
        _buildDataRow('Jun', ['61', '41', '10', '1', 'xxx%']),
      ],
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
}
