import 'package:flutter/material.dart';

import 'package:alnoor/appbar.dart';
import 'package:alnoor/tabbarv.dart';
import 'package:flutter/services.dart';

void main(List<String> args) {
  runApp(MyApp());
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: appbar(),
      theme: ThemeData(
        fontFamily: "AMINE_MOD",
      ),
    );
  }
}

double syusbuy = 3500;
double syussale = 3600;
double sytbuy = 300;
double sytsale = 310;
double ustbuy = 12;
double ustsale = 12.5;
