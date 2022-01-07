import 'package:alnoor/main.dart';
import 'package:alnoor/shared/them.dart';
import 'package:alnoor/shared/widget/adress_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alnoor/appbar.dart';
import '../../words.dart';

class Refreshwi extends StatefulWidget {
  final String Time;
  final String Data;
  const Refreshwi({
    Key? key,
    required this.Time,
    required this.Data,
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
            flex: 3,
            child: Center(
              child: Text(widget.Data, style: StylePlatform.StyleTile),
            ),
          ),
          Expanded(
            flex: 3,
            child: Center(
              child: Text(widget.Time, style: StylePlatform.StyleTile),
            ),
          ),
          Expanded(
            flex: 6,
            child: Center(),
          ),
        ],
      ),
    );
  }
}
