import 'package:alnoor/main.dart';
import 'package:alnoor/shared/them.dart';
import 'package:alnoor/shared/widget/adress_bar.dart';
import 'package:alnoor/shared/widget/home/calculater_we.dart';
import 'package:alnoor/shared/widget/home/phone.dart';
import 'package:alnoor/shared/widget/home/we.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alnoor/appbar.dart';
import '../shared/words.dart';

class wewe extends StatefulWidget {
  wewe({Key? key}) : super(key: key);

  @override
  _weweState createState() => _weweState();
}

class _weweState extends State<wewe> {
  @override
  Widget build(BuildContext context) {
    return we(Phone_One: "", Phone_tow: "", web_web: "", face_book: "");
  }
}
