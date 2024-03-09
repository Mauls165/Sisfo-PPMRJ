import 'package:flutter/material.dart';
import 'Onboarding2.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const Onboarding2(),
          ),
        );
      },
    );
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/logo_1.png'), //logo ppm
      ),
    );
  }
}
