import 'package:alnoor/main.dart';
import 'package:alnoor/shared/them.dart';
import 'package:alnoor/shared/widget/adress_bar.dart';
import 'package:alnoor/shared/widget/home/calculater_we.dart';
import 'package:alnoor/shared/widget/home/phone.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alnoor/appbar.dart';
import '../../../../shared/words.dart';

class we extends StatefulWidget {
  final String Phone_One;
  final String Phone_tow;
  final String web_web;
  final String face_book;
  const we({
    Key? key,
    required this.Phone_One,
    required this.Phone_tow,
    required this.web_web,
    required this.face_book,
  }) : super(key: key);

  @override
  _weState createState() => _weState();
}

class _weState extends State<we> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorPlatform.colorContainerBackground,
      ),
      width: double.infinity,
      padding: PaddingPlatform.twenty,
      child: ListView(
        children: [
          Container(
            margin: PaddingPlatform.twenty,
            padding: PaddingPlatform.ten,
            decoration: DecoPlatform.decosaleandbuyButton,
            child: Center(
              child: Text(
                StringPlatform.companyname,
                style: StylePlatform.stylesaleandbuy,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
            padding: PaddingPlatform.ten,
            decoration: DecoPlatform.decosaleandbuyButton,
            child: Center(
              child: Text(
                StringPlatform.masseg,
                style: StylePlatform.stylesaleandbuy,
              ),
            ),
          ),
          Container(
            margin: PaddingPlatform.five,
            padding: PaddingPlatform.twenty,
            decoration: DecoPlatform.decoourmasseg,
            child: Text(StringPlatform.ourmasseg,
                textAlign: TextAlign.center,
                style: StylePlatform.styleourmessag),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
            padding: PaddingPlatform.ten,
            decoration: DecoPlatform.decosaleandbuyButton,
            child: Center(
              child: Text(
                StringPlatform.vision,
                style: StylePlatform.stylesaleandbuy,
              ),
            ),
          ),
          Container(
            margin: PaddingPlatform.five,
            padding: PaddingPlatform.twenty,
            decoration: DecoPlatform.decoourmasseg,
            child: Text(StringPlatform.ourvision,
                textAlign: TextAlign.center,
                style: StylePlatform.styleourmessag),
          ),
          Container(
            alignment: Alignment.center,
            decoration: DecoPlatform.decosaleandbuy,
            padding: PaddingPlatform.three,
            height: 40,
            margin: PaddingPlatform.five,
            child: const Text(StringPlatform.forcomunication,
                style: StylePlatform.stylesaleandbuy),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: DecoPlatform.decosaleandbuy,
                    padding: PaddingPlatform.three,
                    height: 40,
                    margin: PaddingPlatform.five,
                    child: const Text(StringPlatform.exchange,
                        style: StylePlatform.styleourmessag),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: DecoPlatform.decosaleandbuy,
                    padding: PaddingPlatform.three,
                    height: 40,
                    margin: PaddingPlatform.five,
                    child: GestureDetector(
                      child: Text(widget.Phone_One,
                          style: StylePlatform.styleourmessag),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: DecoPlatform.decosaleandbuy,
                    padding: PaddingPlatform.three,
                    height: 40,
                    margin: PaddingPlatform.five,
                    child: const Text(StringPlatform.transferr,
                        style: StylePlatform.styleourmessag),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: DecoPlatform.decosaleandbuy,
                    padding: PaddingPlatform.three,
                    height: 40,
                    margin: PaddingPlatform.five,
                    child: GestureDetector(
                      child: Text(widget.Phone_tow,
                          style: StylePlatform.styleourmessag),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: DecoPlatform.decosaleandbuy,
                    padding: PaddingPlatform.three,
                    height: 40,
                    margin: PaddingPlatform.five,
                    child: const Text(StringPlatform.web,
                        style: StylePlatform.styleourmessag),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: DecoPlatform.decosaleandbuy,
                    padding: PaddingPlatform.three,
                    height: 40,
                    margin: PaddingPlatform.five,
                    child: GestureDetector(
                      child: Text(widget.web_web,
                          style: StylePlatform.styleourmessag),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: DecoPlatform.decosaleandbuy,
                    padding: PaddingPlatform.three,
                    height: 40,
                    margin: PaddingPlatform.five,
                    child: const Text(StringPlatform.facebook,
                        style: StylePlatform.styleourmessag),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: DecoPlatform.decosaleandbuy,
                    padding: PaddingPlatform.three,
                    height: 40,
                    margin: PaddingPlatform.five,
                    child: GestureDetector(
                      child: Text(widget.face_book,
                          style: StylePlatform.styleourmessag),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
