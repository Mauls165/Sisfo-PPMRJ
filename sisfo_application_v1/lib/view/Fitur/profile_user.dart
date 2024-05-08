import 'package:flutter/material.dart';
import 'package:sisfo_application_v1/theme/constant.dart';
import 'package:sisfo_application_v1/view/widgets/header_fitur.dart';
import 'package:provider/provider.dart';
import '../../view_model/santriVM.dart';

class ProfileUser extends StatefulWidget {
  final int userId;
  final SantriViewModel santriViewModel;
  const ProfileUser(
      {super.key, required this.userId, required this.santriViewModel});

  @override
  State<ProfileUser> createState() => _ProfileUserState();
}

class _ProfileUserState extends State<ProfileUser> {
  @override
  void initState() {
    super.initState();
    // Panggil metode fetchSantri dari santriViewModel saat halaman diinisialisasi
    widget.santriViewModel.fetchSantri(widget.userId);
  }

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

  Widget _buildProfileUser() {
    return ChangeNotifierProvider.value(
      value: widget.santriViewModel,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        decoration: BoxDec.ShadowBox(),
        child:
            Consumer<SantriViewModel>(builder: (context, santriViewModel, _) {
          return Column(
            children: [
              _buildProfileCard('Nama', '${santriViewModel.user?.fullname}'),
              _buildProfileCard(
                  'Jenis Kelamin', '${santriViewModel.user?.gender}'),
              _buildProfileCard(
                  'Tanggal Lahir', '${santriViewModel.user?.birthdate}'),
              _buildProfileCard('No HP (WA)', '${santriViewModel.user?.nohp}'),
              _buildProfileCard('Email', '${santriViewModel.user?.email}'),
              _buildProfileCard('Dapukan', 'Koor Lorong'),
              _buildProfileCard(
                  'Angkatan', '${santriViewModel.santri?.angkatan}'),
              _buildProfileCard('NIS', '${santriViewModel.santri?.nis}'),
              _buildProfileCard('Lorong', 'Lorong User'),
            ],
          );
        }),
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
}
