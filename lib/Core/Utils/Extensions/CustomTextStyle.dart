import 'dart:ui';

import 'package:flutter/material.dart';

extension CustomTextStyle on TextStyle{
  TextStyle withIranSans({double fontSize = 14.0, Color? color = Colors.black}){
    return TextStyle(fontFamily: "IranSans",fontSize: fontSize,color: color);
  }
}