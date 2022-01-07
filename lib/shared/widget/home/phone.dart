import 'package:alnoor/main.dart';
import 'package:alnoor/shared/them.dart';
import 'package:alnoor/shared/widget/adress_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alnoor/appbar.dart';
import '../../words.dart';

class Phonewi extends StatefulWidget {
  /*final String phone_exchange;
  final String phone_transfer;
  const Phonewi({
    Key? key,
    required this.phone_exchange,
    required this.phone_transfer,
  }) : super(key: key);*/

  @override
  _PhonewiState createState() => _PhonewiState();
}

class _PhonewiState extends State<Phonewi> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 0, 10, 5),
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: Center(
                  child: TextButton(
                onPressed: () {},
                child: Text(
                  StringPlatform.exchang,
                  style: StylePlatform.StyleTile,
                ),
              ))),
          /* Expanded(
            flex: 5,
            child: Center(
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    widget.phone_exchange,
                    style: StylePlatform.StyleTile,
                  )),
            ),
          ),*/
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
            flex: 2,
            child: Center(
                child: TextButton(
              onPressed: () {},
              child:
                  Text(StringPlatform.transfer, style: StylePlatform.StyleTile),
            )),
          ),
          /* Expanded(
            flex: 5,
            child: Center(
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    widget.phone_transfer,
                    style: StylePlatform.StyleTile,
                  )),
            ),
          ),*/
        ],
      ),
    );
    ;
  }
}
