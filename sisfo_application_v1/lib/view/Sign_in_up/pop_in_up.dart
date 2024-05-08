import 'package:flutter/material.dart';
import 'package:sisfo_application_v1/theme/constant.dart';
import 'package:sisfo_application_v1/view/widgets/button_login.dart';

class PopIn extends StatelessWidget {
  final String title;
  final String body;
  final String label;
  final VoidCallback onPressed;
  const PopIn(
      {super.key,
      required this.title,
      required this.body,
      required this.label,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          //layer 1 transparant
          Container(
            width: 296,
            height: 315,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
          ),
          //layer 2 putih
          Positioned(
            top: 35,
            child: Container(
              width: 296,
              height: 244,
              decoration: BoxDecoration(
                color: AppTheme.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title, //title

                    style: AppTextStyle.MainHeaderTxt(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    body, // text body
                    style: AppTextStyle.InUptxt(),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          //layer 3 circle green
          const Positioned(
            top: 0,
            left: 97,
            child: CircleAvatar(
              radius: 51,
              backgroundColor: AppTheme.primaryTheme1,
              child: Icon(
                Icons.check,
                size: 60,
                color: AppTheme.white,
              ),
            ),
          ),
          //layer 4 button
          Positioned(
            bottom: 0,
            left: 56.5,
            child: SizedBox(
              width: 183,
              child: LoginButton(
                onPressed: onPressed,
                label: label, //label
              ),
            ),
          ),
        ],
      ),
    );
  }
}
