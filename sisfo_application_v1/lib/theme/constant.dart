import 'package:flutter/material.dart';

//color theme
class AppTheme {
  //primaries colors app
  static const Color primaryTheme1 = Color(0xFF5EAB44);
  static const Color primaryTheme2 = Color(0xFFA9D29C);

  //Black n White n Grays colors app
  static const Color black = Color(0xFF000000);
  static const Color gray = Color(0xFF999999);
  static const Color white = Color(0xFFFFFFFF);

  //RGB
  static const Color red = Color(0xFFD29C9C);
  static const Color yellow = Color(0xFFFDFF94);
  static const Color green = AppTheme.primaryTheme2;
}

//box decoration
class BoxDec {
  static BoxDecoration greenBoxDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: AppTheme.primaryTheme2,
    );
  }

  static BoxDecoration ShadowBox() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: AppTheme.gray.withOpacity(0.25),
          blurRadius: 10,
          offset: Offset(0, 10), // changes position of shadow
        ),
      ],
    );
  }
}

//txt style
class AppTextStyle {
  static TextStyle MainHeaderTxt(
      {Color? color, double? fontSize, FontWeight? fontsWeight}) {
    return TextStyle(
      fontFamily: "Poppins",
      color: AppTheme.black,
      fontSize: fontSize,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle ButtonTxt(
      {Color? color, double? fontSize, FontWeight? fontsWeight}) {
    return TextStyle(
      fontFamily: "Poppins",
      color: AppTheme.white,
      fontSize: fontSize,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle InUptxt(
      {Color? color, double? fontSize, FontWeight? fontsWeight}) {
    return const TextStyle(
      fontFamily: "Poppins",
      color: AppTheme.gray,
      fontSize: 12,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle HeaderTxt(int i, {double? fontSize, Color? color}) {
    return TextStyle(
      fontFamily: "Poppins",
      color: color,
      fontSize: fontSize,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle PresentTxt(int i, {double? fontSize}) {
    return TextStyle(
      color: AppTheme.white,
      fontSize: fontSize,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle BodyTxt({FontWeight? fontsWeight}) {
    return TextStyle(
      fontFamily: "Poppins",
      color: AppTheme.black,
      fontSize: 14,
      fontWeight: fontsWeight,
    );
  }
}
