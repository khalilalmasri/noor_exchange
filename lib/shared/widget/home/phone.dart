import 'package:alnoor/core/network/api/api_price_currency_constant.dart';
import 'package:alnoor/main.dart';
import 'package:alnoor/shared/them.dart';
import 'package:alnoor/shared/widget/adress_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alnoor/appbar.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../words.dart';

class PhoneContactUsWidget extends StatefulWidget {
  /*final String phone_exchange;
  final String phone_transfer;
  const Phonewi({
    Key? key,
    required this.phone_exchange,
    required this.phone_transfer,
  }) : super(key: key);*/

  @override
  _PhoneContactUsWidgetState createState() => _PhoneContactUsWidgetState();
}

class _PhoneContactUsWidgetState extends State<PhoneContactUsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 0, 10, 5),
      child: Row(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                  alignment: Alignment.center,
                  decoration: DecoPlatform.buttonContactWhatsUp,
                  height: 40,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: MaterialButton(
                    onPressed: () async {
                      if (!await launch(
                          'https://wa.me/${ApiPriceCurrencyConstant.aboutUs!.value.phoneManager}'))
                        throw 'Could not launch ';
                    },
                    child: Text(
                      StringPlatform.exchang,
                      style: StylePlatform.StyleTile,
                    ),
                  ))),

          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
            flex: 3,
            child: Container(
                alignment: Alignment.center,
                decoration: DecoPlatform.buttonContactWhatsUp,

                height: 40,
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: MaterialButton(
                  onPressed: () async {
                    if (!await launch(
                        'https://wa.me/${ApiPriceCurrencyConstant.aboutUs!.value.phoneAssistant}'))
                      throw 'Could not launch ';
                  },
                  child: Text(StringPlatform.transfer,
                      style: StylePlatform.StyleTile),
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
