import 'package:flutter/material.dart';
import 'package:sisfo_application_v1/theme/constant.dart';
import 'package:sisfo_application_v1/view/Sign_in_up/sign_in.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => (const SignIn()),
          ),
        );
      },
    );
    return Scaffold(
      backgroundColor: AppTheme.primaryTheme1,
      body: Center(
        child: Image.asset('assets/images/logo_white_1.png'), //logo ppm
      ),
    );
  }
}
