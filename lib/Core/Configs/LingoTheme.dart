import 'package:flutter/material.dart';

class LingoTheme extends ThemeExtension<LingoTheme> {
  final Color primaryColor;
  final Color tertiaryColor;
  final Color neutralColor;

  LingoTheme(
      {this.primaryColor = const Color(0xff143794),
      this.tertiaryColor = const Color(0xffF84C4D),
      this.neutralColor = const Color(0xff47CB78)});

  @override
  ThemeExtension<LingoTheme> copyWith() {
    return LingoTheme();
  }

  @override
  ThemeExtension<LingoTheme> lerp(
      covariant ThemeExtension<LingoTheme>? other, double t) {
    if (other is! LingoTheme) return this;
    return LingoTheme();
  }

  ThemeData toThemeData() {
    return ThemeData(
        useMaterial3: false,
        colorScheme: ColorScheme.fromSeed(
            background: primaryColor,
            seedColor: primaryColor,
            secondary: tertiaryColor,
            tertiary: tertiaryColor));
  }
}
