import 'package:alnoor/calculaterpage.dart';
import 'package:alnoor/shared/widget/adress_bar.dart';
import 'package:alnoor/shared/widget/home/price_currency.dart';
import 'package:alnoor/shared/words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alnoor/appbar.dart';
import '../shared/them.dart';
import 'package:alnoor/main.dart';

class PricePage extends StatefulWidget {
  PricePage({Key? key}) : super(key: key);

  @override
  _PricePageState createState() => _PricePageState();
}

class _PricePageState extends State<PricePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        //main container
        decoration: BoxDecoration(
          color: ColorPlatform.colorContainerBackground,
        ),
        width: double.infinity,
        padding: PaddingPlatform.twenty,
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),

          //main column

          children: [
            AdressBar(
              adress: StringPlatform.Title,
              phone_number: StringPlatform.phone,
            ),
            PriceCurrency(
              name_code_buy: 'USD',
              name_code_sale: 'SYP',
              name_price_buy: StringPlatform.dollar,
              name_price_sale: StringPlatform.syrian,
              price_sale: 54.5,
              price_buy: 56.5,
              title: '',
            ),
            PriceCurrency(
              name_code_buy: 'TL.',
              name_code_sale: 'SYP',
              name_price_buy: StringPlatform.turky,
              name_price_sale: StringPlatform.syrian,
              price_sale: 54.5,
              price_buy: 56.5,
              title: '',
            ),
            PriceCurrency(
              name_code_buy: 'USD',
              name_code_sale: 'TL',
              name_price_buy: StringPlatform.dollar,
              name_price_sale: StringPlatform.turky,
              price_sale: 54.5,
              price_buy: 56.5,
              title: '',
            ),
          ],
        ));
  }
}
