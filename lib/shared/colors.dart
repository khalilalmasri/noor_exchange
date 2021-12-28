import 'dart:ui';

import 'package:flutter/material.dart';

class ColorPlatform {
  static const Color appbarcolor = Color(0xff8E0505);
  static const Color appbarsecond = Color(0xffCFB784);
  static const Color colorthree = Color(0xff344CB7);
  static const Color colorfore = Color(0xffF0ECE3);
  static const Color colorfive = Color(0xffB05E27);
  static const Color colorsix = Color(0x42000000);
  static const Color colorContainerBackground = Color(0x22000000);
  static const Color colorblack = Color(0xff000000);
  static const Color colorpackground = Color(0xdd000000);
  static const Color red = Colors.red;
  static const Color green = Colors.green;
}

class PaddingPlatform {
  static const EdgeInsets twenty = EdgeInsets.all(20);
  static const EdgeInsets three = EdgeInsets.all(3);
  static const EdgeInsets five = EdgeInsets.all(5);
}

class StylePlatform {
  static const TextStyle buttomtextwithcolorthree = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: ColorPlatform.colorthree);
  static const TextStyle buttomtextwithcolorsecond = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: ColorPlatform.appbarsecond);
  static const TextStyle buttomtextwithcolorfour = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: ColorPlatform.colorfore);
  static const TextStyle buttomtextwithcolorfive = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: ColorPlatform.colorfive);
}

class DecoPlatform {
  static Decoration decotest = BoxDecoration(
      color: ColorPlatform.colorsix,
      borderRadius: BorderRadius.circular(5),
      border: Border.all(color: ColorPlatform.colorsix, width: 2));
}
