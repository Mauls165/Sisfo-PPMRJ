import 'package:flutter/material.dart';
import 'package:sisfo_application_v1/theme/constant.dart';

// ignore: camel_case_types
class login_field extends StatelessWidget {
  final String labelText;
  // final TextEditingController controller;
  const login_field({super.key, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextField(
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: AppTextStyle.InUptxt(),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: AppTheme.gray,
            ),
          ),
        ),
      ),
    );
  }
}
