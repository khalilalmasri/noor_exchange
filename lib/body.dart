import 'package:alnoor/pageone/pricepage.dart';
import 'package:alnoor/calculaterpage.dart';
import 'package:flutter/material.dart';
import 'package:alnoor/appbar.dart';

class bodyy extends StatefulWidget {
  bodyy({Key? key}) : super(key: key);

  @override
  _bodyyState createState() => _bodyyState();
}

class _bodyyState extends State<bodyy> {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        PricePage(),
        calculater(),
      ],
    );
  }
}
