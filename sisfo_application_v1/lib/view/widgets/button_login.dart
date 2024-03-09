import 'package:flutter/material.dart';
import 'package:sisfo_application_v1/theme/constant.dart';

class LoginButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  const LoginButton({super.key, required this.onPressed, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 18),
      width: double.infinity,
      height: 50.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: AppTheme.primaryTheme2),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor:
              Colors.transparent, // Set agar latar belakang tidak terlihat
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        child: Text(
          label,
          style: AppTextStyle.ButtonTxt(fontSize: 18),
        ),
      ),
    );
  }
}
