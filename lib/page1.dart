import 'package:alnoor/shared/words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alnoor/appbar.dart';
import '../shared/colors.dart';

class pageone extends StatefulWidget {
  pageone({Key? key}) : super(key: key);

  @override
  _pageoneState createState() => _pageoneState();
}

class _pageoneState extends State<pageone> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: PaddingPlatform.twenty,
      color: ColorPlatform.colorpackground,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                color: ColorPlatform.colorContainerBackground,
                border: Border(
                    bottom: BorderSide(
                        color: ColorPlatform.appbarsecond, width: 5))),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: ColorPlatform.colorContainerBackground,
                      borderRadius: BorderRadius.circular(5),
                      border:
                          Border.all(color: ColorPlatform.colorsix, width: 2)),
                  padding: PaddingPlatform.three,
                  height: 40,
                  margin: PaddingPlatform.five,
                  child: Text(
                    StringPlatform.dollarandsyrian,
                    style: StylePlatform.buttomtextwithcolorsecond,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: DecoPlatform.decotest,
                        padding: PaddingPlatform.three,
                        height: 40,
                        margin: PaddingPlatform.five,
                        child: Text(
                          StringPlatform.buy,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: ColorPlatform.colorfive),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: ColorPlatform.colorsix,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: ColorPlatform.colorsix, width: 2)),
                        padding: PaddingPlatform.three,
                        height: 40,
                        margin: PaddingPlatform.five,
                        child: Text(
                          "9999.0",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: ColorPlatform.colorfive),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: ColorPlatform.colorsix,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: ColorPlatform.colorsix, width: 2)),
                        padding: PaddingPlatform.three,
                        height: 40,
                        margin: PaddingPlatform.five,
                        child: Container(
                          child: Row(
                            children: [
                              Text(
                                "25.5%",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: ColorPlatform.colorthree),
                              ),
                              Icon(
                                Icons.arrow_drop_down_sharp,
                                color: ColorPlatform.red,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: DecoPlatform.decotest,
                        padding: PaddingPlatform.three,
                        height: 40,
                        margin: PaddingPlatform.five,
                        child: Text(
                          StringPlatform.sale,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: ColorPlatform.colorfive),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: ColorPlatform.colorsix,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: ColorPlatform.colorsix, width: 2)),
                        padding: PaddingPlatform.three,
                        height: 40,
                        margin: PaddingPlatform.five,
                        child: Text(
                          "9999.0",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: ColorPlatform.colorfive),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: ColorPlatform.colorsix,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: ColorPlatform.colorsix, width: 2)),
                        padding: PaddingPlatform.three,
                        height: 40,
                        margin: PaddingPlatform.five,
                        child: Container(
                          child: Row(
                            children: [
                              Text(
                                "25.5%",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: ColorPlatform.colorthree),
                              ),
                              Icon(
                                Icons.arrow_drop_up_sharp,
                                color: ColorPlatform.green,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
