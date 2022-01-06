import 'package:flutter/material.dart';
import '../colors.dart';
import '../words.dart';

class AdressBar extends StatelessWidget {
  final String adress;
  final String phone_number;
  const AdressBar({Key? key, required this.adress, required this.phone_number})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 0, 10, 30),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Icon(Icons.golf_course_outlined,
                  size: 15, color: ColorPlatform.colorwhite)),
          Expanded(
            flex: 3,
            child: Center(
              child: Text(
                adress,
                style: StylePlatform.StyleTile,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
            flex: 3,
            child: Center(
              child: Text(phone_number, style: StylePlatform.StyleTile),
            ),
          ),
          Expanded(
              flex: 1,
              child: Icon(
                Icons.phone,
                color: ColorPlatform.colorwhite,
                size: 15,
              )),
        ],
      ),
    );
  }
}
