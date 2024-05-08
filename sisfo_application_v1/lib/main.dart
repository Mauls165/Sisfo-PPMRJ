import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sisfo_application_v1/view/Fitur/izin/add_izin.dart';
import 'package:sisfo_application_v1/view/Fitur/lorong.dart';
import 'package:sisfo_application_v1/view/Fitur/monitoring.dart';
import 'package:sisfo_application_v1/view/Fitur/presence/all_presence.dart';
// import 'package:sisfo_application_v1/view/HomePage/main_app.dart';
import 'package:sisfo_application_v1/view/Onboarding/Onboarding1.dart';
import 'package:sisfo_application_v1/view_model/santriVM.dart';
import 'package:sisfo_application_v1/view_model/userVM.dart';

import 'view/Fitur/izin/izin.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserViewModel()),
        ChangeNotifierProvider(create: (_) => SantriViewModel()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onboarding1(),
      routes: {
        // '/home': (context) => MainHomePage(),
        '/all_presence': (context) => AllPresence(),
        '/izin': (context) => IzinPage(),
        '/lorong': (context) => Lorong(),
        '/monitoring': (context) => Monitoring(),
        '/add_izin': (context) => Add_Izin(),

        // Tambahkan rute untuk halaman lainnya di sini
      },
    );
  }
}
