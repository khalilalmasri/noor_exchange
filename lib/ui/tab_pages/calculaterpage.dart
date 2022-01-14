import 'package:alnoor/main.dart';
import 'package:alnoor/shared/them.dart';
import 'package:alnoor/shared/widget/adress_bar.dart';
import 'package:alnoor/shared/widget/home/calculater_we.dart';
import 'package:alnoor/shared/widget/home/phone.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alnoor/appbar.dart';
import '../../../shared/words.dart';
import '../../core/network/api/api_price_currency_constant.dart';

class CalculatorScreen extends StatefulWidget {
  CalculatorScreen({Key? key}) : super(key: key);

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {

  @override
  Widget build(BuildContext context) {
    List<Widget> listPrice = [];

    ApiPriceCurrencyConstant.pricesCurrencyResponse.map((e) {
      listPrice.add(
          CalculatorWidget(
        price_sale: double.parse(e.currencySellingPrice),
        price_buy: double.parse(e.currencyBuyPrice),
        name_price: e.currencySellingName,
        name_price_result: e.currencyBuyName,
        name_price_cal: e.currencySellingName,

      ));
    }).toList();
    listPrice.insert(0, PhoneContactUsWidget());
    listPrice.insert(
        listPrice.length,
        AdressBar(
          adress: StringPlatform.Title,
          phone_number: StringPlatform.phone,
        ));

    return Container(
      decoration: BoxDecoration(
        color: ColorPlatform.colorContainerBackground,
      ),
      width: double.infinity,
      padding: PaddingPlatform.ten,
      child: ListView(
        children: listPrice.map((e) => e).toList(),
      ),
    );
  }
}
