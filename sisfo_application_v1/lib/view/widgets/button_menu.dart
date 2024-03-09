import 'package:flutter/material.dart';

import '../../theme/constant.dart';

class ButtonMenu extends StatelessWidget {
  final String text;
  final int index;
  final int currentIndex;
  final VoidCallback onTap;

  const ButtonMenu({
    super.key,
    required this.text,
    required this.index,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: index == currentIndex
                ? AppTheme.primaryTheme1
                : AppTheme.primaryTheme2, // Menandai menu yang aktif
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'Poppins',
              color: index == currentIndex
                  ? AppTheme.primaryTheme1
                  : AppTheme
                      .primaryTheme2, // Mengubah warna teks untuk menu yang aktif
              fontWeight: index == currentIndex
                  ? FontWeight.bold
                  : FontWeight
                      .normal, // Mengubah bobot teks untuk menu yang aktif
            ),
          ),
        ),
      ),
    );
  }
}
