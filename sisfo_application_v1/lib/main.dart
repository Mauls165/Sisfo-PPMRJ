import 'package:flutter/material.dart';
import 'package:sisfo_application_v1/view/Fitur/izin.dart';
import 'package:sisfo_application_v1/view/Fitur/lorong.dart';
import 'package:sisfo_application_v1/view/Fitur/monitoring.dart';
import 'package:sisfo_application_v1/view/Fitur/presence/all_presence.dart';
import 'package:sisfo_application_v1/view/HomePage/main_app.dart';
import 'package:sisfo_application_v1/view/Onboarding/Onboarding1.dart';

void main() {
  runApp(const MyApp());
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
        '/home': (context) => MainHomePage(),
        '/all_presence': (context) => AllPresence(),
        '/izin': (context) => IzinPage(),
        '/lorong': (context) => Lorong(),
        '/monitoring': (context) => Monitoring(),
        // Tambahkan rute untuk halaman lainnya di sini
      },
    );
  }
}
