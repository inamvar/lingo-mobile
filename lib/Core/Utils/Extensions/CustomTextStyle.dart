import 'dart:ui';

import 'package:flutter/material.dart';

extension CustomTextStyle on TextStyle {
  TextStyle withIranSans(
      {double fontSize = 14.0,
      Color? color = Colors.black,
      FontWeight fontWeight = FontWeight.normal,
      TextDecoration? textDecoration}) {
    return TextStyle(
        fontFamily: "IranSans",
        decoration: textDecoration,
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight);
  }
}
