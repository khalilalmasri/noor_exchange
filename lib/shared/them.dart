import 'package:flutter/material.dart';

class ColorPlatform {
  static const Color appbarcolor = Color(0xff413714);
  static const Color secondcolor = Color(0xff8a7a25);
  static const Color thirddcolor = Color(0xffe2b746);
  static const Color golden = Color(0xffE6B31E);
  static const Color colorwhite = Color(0xffF0ECE3);
  static const Color colorsix = Color(0x11000000);
  static const Color colorContainerBackground = Color(0xff181712);
  static const Color colorblack = Color(0xff000000);
  static const Color colorpackground = Color(0xff1d1d1d);
  static const Color red = Color(0xff541212);
  static const Color green = Colors.green;
}

class PaddingPlatform {
  static const EdgeInsets twenty = EdgeInsets.all(20);
  static const EdgeInsets ten = EdgeInsets.all(10);
  static const EdgeInsets three = EdgeInsets.all(3);
  static const EdgeInsets five = EdgeInsets.all(5);
}

class StylePlatform {
  static const TextStyle stylesecondtile = TextStyle(
      fontFamily: "CONTHRAX-SB",
      fontSize: 15,
      fontWeight: FontWeight.bold,
      color: ColorPlatform.colorwhite);
  static const TextStyle stylesaleandbuy = TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      color: ColorPlatform.colorwhite);
  static const TextStyle stylesaleandbuywhite = TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      color: ColorPlatform.colorwhite);
  static const TextStyle StyleTile = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: ColorPlatform.colorwhite);
  static const TextStyle StyleTabpar =
      TextStyle(fontSize: 15, fontWeight: FontWeight.bold);
  static const TextStyle styleourmessag = TextStyle(
      fontFamily: "AMINE_MOD",
      height: 1.5,
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: ColorPlatform.colorwhite);
}

class DecoPlatform {
  static Decoration DecoFirstMainContainer = BoxDecoration(
      color: ColorPlatform.colorsix,
      border:
          Border(bottom: BorderSide(color: ColorPlatform.golden, width: 4)));
  static Decoration decoourmasseg = BoxDecoration(
      color: ColorPlatform.colorsix,
      borderRadius: BorderRadius.circular(25),
      border: Border.all(color: ColorPlatform.golden, width: 1));
  static Decoration decotapbar = BoxDecoration(
      color: ColorPlatform.golden,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: ColorPlatform.colorsix, width: 2));
  static Decoration decosaleandbuy = BoxDecoration(
      color: ColorPlatform.colorpackground,
      borderRadius: BorderRadius.circular(3));
  static Decoration decosecondcontailer = BoxDecoration(
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10), topRight: Radius.circular(10)),
  );
  static Decoration decosaleandbuyButton = BoxDecoration(
      color: ColorPlatform.appbarcolor,
      borderRadius: BorderRadius.circular(30));
}
