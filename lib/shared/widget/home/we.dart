import 'package:alnoor/main.dart';
import 'package:alnoor/shared/them.dart';
import 'package:alnoor/shared/widget/adress_bar.dart';
import 'package:alnoor/shared/widget/home/calculater_we.dart';
import 'package:alnoor/shared/widget/home/phone.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alnoor/appbar.dart';
import '../../../../shared/words.dart';

class AboutUsWidget extends StatefulWidget {
  final String manager_phone;
  final String assistant_phone;
  final String website;
  final String facebook;
  final String company_name;
  final String our_message;
  final String our_vision;
  final String note;

  const AboutUsWidget({
    Key? key,
    required this.manager_phone,
    required this.assistant_phone,
    required this.website,
    required this.facebook,
    required this.company_name,
    required this.our_message,
    required this.our_vision,required this.note,
  }) : super(key: key);

  @override
  _AboutUsWidgetState createState() => _AboutUsWidgetState();
}

class _AboutUsWidgetState extends State<AboutUsWidget> {
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
                widget.company_name,
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
            child: Text(widget.our_message,
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
            child: Text(widget.our_vision,
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
                      child: Text(widget.manager_phone,
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
                      child: Text(widget.assistant_phone,
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
                      child: Text(widget.website != null ? widget.website : '',
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
                      child: Text(
                          widget.facebook != null ? widget.facebook : '',
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
                    child: const Text(StringPlatform.note,
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
                      child: Text(
                          widget.note != null ? widget.note : '',
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
