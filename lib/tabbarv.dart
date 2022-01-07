import 'package:alnoor/advertiz.dart';
import 'package:alnoor/pageone/pricepage.dart';
import 'package:alnoor/calculaterpage.dart';
import 'package:flutter/material.dart';
import 'package:alnoor/appbar.dart';

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
      ],
    );
  }
}
