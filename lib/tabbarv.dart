import 'package:alnoor/ui/tab_pages/advertiz.dart';
import 'package:alnoor/ui/tab_pages/pricepage.dart';
import 'package:alnoor/ui/tab_pages/calculaterpage.dart';
import 'package:alnoor/shared/widget/home/we.dart';
import 'package:flutter/material.dart';
import 'package:alnoor/appbar.dart';
import 'package:alnoor/ui/tab_pages/about_screen.dart';

class tabbarv extends StatefulWidget {
  tabbarv({Key? key}) : super(key: key);

  @override
  _tabbarvState createState() => _tabbarvState();
}

class _tabbarvState extends State<tabbarv> {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        PricePage(),
        CalculatorScreen(),
        AdScreen(),
        AboutUsScreen(),
      ],
    );
  }
}
