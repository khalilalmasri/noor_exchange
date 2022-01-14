import 'package:alnoor/main.dart';
import 'package:alnoor/shared/them.dart';
import 'package:alnoor/shared/widget/adress_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alnoor/appbar.dart';
import 'package:intl/intl.dart';
import '../../words.dart';

class Refreshwi extends StatefulWidget {

  final DateTime LastUpdate;
  const Refreshwi({
    Key? key,

    required this.LastUpdate,
  }) : super(key: key);

  @override
  _RefreshwiState createState() => _RefreshwiState();
}

class _RefreshwiState extends State<Refreshwi> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Center(
              child: Text(
                StringPlatform.finalrefresh,
                style: StylePlatform.StyleTile,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Center(
              child: Text(DateFormat('yyyy-MM-dd') .add_jms().format(widget.LastUpdate), style: TextStyle(
                  fontSize: 20,

                  color: ColorPlatform.colorwhite)),
            ),
          ),


        ],
      ),
    );
  }

}
