import 'package:alnoor/page1.dart';
import 'package:alnoor/page2.dart';
import 'package:alnoor/page3.dart';
import 'package:alnoor/page4.dart';
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
        pageone(),
        pagetow(),
        pagethree(),
        pagefore(),
      ],
    );
  }
}
