import 'package:flutter/material.dart';
import 'package:sisfo_application_v1/theme/constant.dart';
import 'package:sisfo_application_v1/view/widgets/button_menu.dart';
// import 'package:sisfo_application_v1/view/widgets/side_bar.dart';
import 'package:sisfo_application_v1/view/widgets/weekly_table.dart';

// import '../widgets/bottom_navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _HomeHeader(),
            _WeeklyCard(),
          ],
        ),
      ),
    );
  }

  Widget _HomeHeader() {
    return Container(
      padding: EdgeInsets.only(top: 62, left: 32, right: 32),
      child: Column(
        //_HomeHeader()
        children: [
          _buildHeader(),
          _buildDataUser(),
          _buildMenuCard(),
        ],
      ),
    );
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
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Builder(builder: (context) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi,',
                  style: AppTextStyle.BodyTxt(),
                ),
                Text(
                  'UserName',
                  style: AppTextStyle.HeaderTxt(1, fontSize: 20),
                ), //username
                Text(
                  'Koor Lorong',
                  style: AppTextStyle.BodyTxt(),
                ), //dapukkan di ppm
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_rounded,
              size: 32,
            ),
          )
        ],
      );
    });
  }

  Widget _buildDataUser() {
    return Container(
      //_buildDataUser
      height: 120,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDec.greenBoxDecoration(),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceAround, //disesuaikan dengan desainnya
        children: [
          Expanded(child: _presentaseKehadiran()),
          Expanded(child: _dataUser()),
        ],
      ),
    );
  }

  Widget _presentaseKehadiran() {
    return Container(
      //_presentaseKehadiran
      // decoration: BoxDecoration(color: Colors.amber),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            //rapikan lagi dengan memindahkan style ke constant
            'Hadir',
            style: AppTextStyle.PresentTxt(1, fontSize: 14),
          ),
          Text(
            '81 %',
            style: AppTextStyle.PresentTxt(1, fontSize: 40),
          ),
          Text(
            'Desember',
            style: AppTextStyle.PresentTxt(1, fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget _dataUser() {
    return Column(
      //_dataUser
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildUserCard('Lorong user'),
        _buildUserCard('Izin 16/16'),
        _buildUserCard('Role'),
      ],
    );
  }

  Widget _buildUserCard(String text) {
    return Container(
      height: 24,
      width: 133,
      decoration: BoxDecoration(
        color: AppTheme.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
          child: Text(
        text,
        style: AppTextStyle.BodyTxt(),
      )),
    );
  }

  Widget _buildMenuCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ButtonMenu(
            text: 'Presensi',
            index: 1,
            currentIndex: _currentIndex,
            onTap: () {
              Navigator.pushNamed(context, '/all_presence');
            },
          ),
          ButtonMenu(
            text: 'Izin',
            index: 1,
            currentIndex: _currentIndex,
            onTap: () {
              Navigator.pushNamed(context, '/izin');
            },
          ),
          ButtonMenu(
            text: 'Lorong',
            index: 1,
            currentIndex: _currentIndex,
            onTap: () {
              Navigator.pushNamed(context, '/lorong');
            },
          ),
          ButtonMenu(
            text: 'Monitoring',
            index: 1,
            currentIndex: _currentIndex,
            onTap: () {
              Navigator.pushNamed(context, '/monitoring');
            },
          )
        ],
      ),
    );
  }

  Widget _buildMenu(String menu, Icon icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 70,
        width: 70,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: () {}, icon: icon),
            Text(menu),
          ],
        ),
      ),
    );
  }
}
