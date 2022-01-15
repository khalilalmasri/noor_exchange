import 'package:alnoor/core/network/api/api_price_currency_constant.dart';
import 'package:flutter/material.dart';
import '../them.dart';
import '../words.dart';

class AdressBar extends StatelessWidget {

  const AdressBar({Key? key})
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
                ApiPriceCurrencyConstant.aboutUs!.value.insta,//address is insta from server,
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
              child: Text(ApiPriceCurrencyConstant.aboutUs!.value.phoneManager =='963966622284'? StringPlatform.phone:ApiPriceCurrencyConstant.aboutUs!.value.phoneManager, style: StylePlatform.StyleTile),
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
