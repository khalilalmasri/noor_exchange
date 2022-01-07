import 'package:alnoor/main.dart';
import 'package:alnoor/shared/them.dart';
import 'package:alnoor/shared/widget/adress_bar.dart';
import 'package:alnoor/shared/widget/home/calculater_we.dart';
import 'package:alnoor/shared/widget/home/phone.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alnoor/appbar.dart';
import '../shared/words.dart';

class adv extends StatefulWidget {
  adv({Key? key}) : super(key: key);

  @override
  _advState createState() => _advState();
}

class _advState extends State<adv> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorPlatform.colorContainerBackground,
      ),
      width: double.infinity,
      padding: PaddingPlatform.ten,
      child: ListView(
        children: [
          Phonewi(),
          Container(
            height: 500,
            child: ListView(
              children: [
                Container(
                  width: 200,
                  margin: PaddingPlatform.twenty,
                  child: GestureDetector(
                      onTap: () {},
                      child: Image(
                        image: AssetImage("images/adv1.jpeg"),
                        fit: BoxFit.contain,
                      )),
                ),
                Container(
                  width: 200,
                  margin: PaddingPlatform.twenty,
                  child: GestureDetector(
                      onTap: () {},
                      child: Image(image: AssetImage("images/adv2.jpeg"))),
                ),
                Container(
                  width: 200,
                  margin: PaddingPlatform.twenty,
                  child: GestureDetector(
                      onTap: () {},
                      child: Image(image: AssetImage("images/adv3.jpeg"))),
                ),
              ],
            ),
          ),
          AdressBar(
            adress: StringPlatform.Title,
            phone_number: StringPlatform.phone,
          ),
        ],
      ),
    );
  }
}
