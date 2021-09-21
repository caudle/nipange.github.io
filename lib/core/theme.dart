import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColor {
  // primary colors
  static const kPrimaryColor = const Color(0xFF1db38c);
  static const kprimaryLightColor = const Color(0xFF61e6bc);
  static const kprimaryDarkColor = const Color(0xFF00825f);

  // secondary colors
  static const ksecondaryColor = const Color(0xFFfc5185);
  static const ksecondaryLightColor = const Color(0xFFff86b4);
  static const ksecondaryDarkColor = const Color(0xFFc40759);

  // text colors
  static const kprimaryTextColor = const Color(0xFF0000);
  static const ksecondaryTextColor = const Color(0xFF0000);
}

ThemeData lightTheme(BuildContext context) {
  final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: AppColor.kPrimaryColor,
    primaryColorLight: AppColor.kprimaryLightColor,
    primaryColorDark: AppColor.kprimaryDarkColor,
    accentColor: AppColor.ksecondaryColor,
    iconTheme: _iconTheme,
    textTheme: GoogleFonts.montserratTextTheme(
      Theme.of(context).textTheme,
    ),
  );

  return lightTheme;
}

IconThemeData _iconTheme = IconThemeData(
  color: AppColor.kprimaryDarkColor,
);
