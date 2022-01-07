import 'package:alnoor/main.dart';
import 'package:alnoor/shared/them.dart';
import 'package:alnoor/shared/widget/adress_bar.dart';
import 'package:alnoor/shared/widget/home/calculater_we.dart';
import 'package:alnoor/shared/widget/home/phone.dart';
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
      padding: PaddingPlatform.ten,
      child: ListView(
        children: [
          Phonewi(),
          Calculaterwe(
              price_buy: syusbuy,
              price_sale: syussale,
              price_buy_small: syusbuy.toString(),
              price_sale_small: syussale.toString(),
              title: "",
              name_price_cal: StringPlatform.dollar,
              name_price: StringPlatform.dollar,
              name_price_result: StringPlatform.syrian),
          Calculaterwe(
              price_buy: sytbuy,
              price_sale: sytsale,
              price_buy_small: sytbuy.toString(),
              price_sale_small: sytsale.toString(),
              title: "",
              name_price_cal: StringPlatform.turky,
              name_price: StringPlatform.turky,
              name_price_result: StringPlatform.syrian),
          Calculaterwe(
              price_buy: ustbuy,
              price_sale: ustsale,
              price_buy_small: ustbuy.toString(),
              price_sale_small: ustsale.toString(),
              title: "",
              name_price_cal: StringPlatform.dollarandturky,
              name_price: StringPlatform.dollar,
              name_price_result: StringPlatform.turky),
          AdressBar(
            adress: StringPlatform.Title,
            phone_number: StringPlatform.phone,
          ),
        ],
      ),
    );
  }
}
