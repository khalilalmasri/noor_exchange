import 'package:alnoor/advertiz.dart';
import 'package:alnoor/pageone/pricepage.dart';
import 'package:alnoor/calculaterpage.dart';
import 'package:alnoor/shared/widget/home/we.dart';
import 'package:flutter/material.dart';
import 'package:alnoor/appbar.dart';
import 'package:alnoor/wewe.dart';

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
        calculater(),
        adv(),
        wewe(),
      ],
    );
  }
}
