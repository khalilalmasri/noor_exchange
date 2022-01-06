import 'package:alnoor/main.dart';
import 'package:alnoor/shared/colors.dart';
import 'package:alnoor/shared/widget/adress_bar.dart';
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
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                    top: -20,
                    right: 0,
                    left: 0,
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        StringPlatform.calculaterthe +
                            '' +
                            StringPlatform.dollar,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              colors: [
                                ColorPlatform.thirddcolor,
                                ColorPlatform.secondcolor
                              ]),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              topLeft: Radius.circular(50))),
                      height: 30,
                    )),
                Container(
                  //first container in main column

                  decoration: DecoPlatform.DecoFirstMainContainer,
                  child: Column(
                    children: [
                      /* Container(
                        // أول أول
                        alignment: Alignment.center,
                        decoration: DecoPlatform.decosecondcontailer,
                        padding: PaddingPlatform.five,
                        height: 25,
                        width: double.infinity,
                        margin: PaddingPlatform.three,
                        child: Text(
                          "00000",
                          style: StylePlatform.stylesecondtile,
                        ),
                      ),*/
                      Container(
                        margin: EdgeInsets.fromLTRB(5, 10, 5, 0),
                        child: Row(
                          //بداية السطر الثاني في العمود الأول
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.center,
                                decoration: DecoPlatform.decosaleandbuyButton,
                                height: 40,
                                margin: const EdgeInsets.only(top: 5),
                                child: MaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      a = uss1;
                                    });
                                  },
                                  child: Text(StringPlatform.buy,
                                      style:
                                          StylePlatform.stylesaleandbuywhite),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              //فارغ
                              child: Container(),
                            ),
                            Expanded(
                              // نهاية السطر الثاني في العمود الأول
                              flex: 1,
                              child: Container(
                                alignment: Alignment.center,
                                decoration: DecoPlatform.decosaleandbuyButton,
                                height: 40,
                                margin: const EdgeInsets.only(top: 5),
                                child: MaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      a = uss2;
                                    });
                                  },
                                  child: Text(StringPlatform.sale,
                                      style:
                                          StylePlatform.stylesaleandbuywhite),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          children: [
                            Expanded(flex: 1, child: Container()),
                            Expanded(
                                flex: 2,
                                child: Container(
                                  height: 40,
                                  child: TextFormField(
                                    style: StylePlatform.stylesaleandbuywhite,
                                    onChanged: (w) {
                                      setState(() {
                                        w.isNotEmpty
                                            ? m = (double.parse(w) * syusbuy)
                                                .toString()
                                            : m = "";
                                        w.isNotEmpty
                                            ? uss1 = (double.parse(w) * syusbuy)
                                                .toString()
                                            : uss1 = "";
                                        w.isNotEmpty
                                            ? uss2 =
                                                (double.parse(w) * syussale)
                                                    .toString()
                                            : uss2 = "";
                                        a = m;
                                      });
                                    },
                                    cursorColor: ColorPlatform.thirddcolor,
                                    keyboardType: TextInputType.number,
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                        hintStyle: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 10),
                                        hintText: StringPlatform.insertvalue +
                                            '' +
                                            StringPlatform.dollar,
                                        suffixIcon: Icon(
                                          Icons.monetization_on_sharp,
                                          color: ColorPlatform.secondcolor,
                                        ),
                                        focusColor: ColorPlatform.secondcolor,
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          borderSide: BorderSide(
                                              color: ColorPlatform.secondcolor,
                                              width: 2),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color:
                                                    ColorPlatform.secondcolor,
                                                width: 2))),
                                  ),
                                )),
                            Expanded(flex: 1, child: Container()),
                          ],
                        ),
                      ),
                      Row(
                        //بداية السطر الثالث في العمود الأول
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 7,
                            child: Container(
                              alignment: Alignment.center,
                              decoration: DecoPlatform.decosaleandbuy,
                              padding: PaddingPlatform.three,
                              height: 35,
                              margin: const EdgeInsets.symmetric(vertical: 3),
                              child: Text(
                                " $a",
                                style: StylePlatform.stylesaleandbuywhite,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            //فارغ
                            child: Container(),
                          ),
                          Expanded(
                            // نهاية السطر الثاني في العمود الأول
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              decoration: DecoPlatform.decosaleandbuy,
                              padding: PaddingPlatform.three,
                              height: 35,
                              margin: const EdgeInsets.symmetric(vertical: 3),
                              child: Text(StringPlatform.syrian,
                                  style: StylePlatform.stylesaleandbuywhite),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
