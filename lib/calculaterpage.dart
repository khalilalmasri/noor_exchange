import 'package:alnoor/main.dart';
import 'package:alnoor/shared/them.dart';
import 'package:alnoor/shared/widget/adress_bar.dart';
import 'package:alnoor/shared/widget/home/calculater_we.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alnoor/appbar.dart';
import '../shared/words.dart';

class calculater extends StatefulWidget {
  calculater({Key? key}) : super(key: key);

  @override
  _calculaterState createState() => _calculaterState();
}

class _calculaterState extends State<calculater> {
  double syusbuy = 3500;
  double syussale = 3600;
  String uss1 = "";
  String uss2 = "";
  String m = "";
  String w = "";
  String a = "";
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
          AdressBar(
            adress: StringPlatform.Title,
            phone_number: StringPlatform.phone,
          ),
          Calculaterwe(
              price_buy: syusbuy,
              price_sale: syussale,
              title: "",
              name_price_cal: StringPlatform.dollar,
              name_price: StringPlatform.dollar,
              name_price_result: StringPlatform.syrian),
          Calculaterwe(
              price_buy: sytbuy,
              price_sale: sytsale,
              title: "",
              name_price_cal: StringPlatform.turky,
              name_price: StringPlatform.turky,
              name_price_result: StringPlatform.syrian),
          Calculaterwe(
              price_buy: ustbuy,
              price_sale: ustsale,
              title: "",
              name_price_cal: StringPlatform.dollarandturky,
              name_price: StringPlatform.dollar,
              name_price_result: StringPlatform.turky),
        ],
      ),
    );
  }
}
