import 'package:flutter/material.dart';
import 'package:alnoor/appbar.dart';
import 'package:alnoor/shared/words.dart';
import '../shared/colors.dart';

class pagetow extends StatefulWidget {
  pagetow({Key? key}) : super(key: key);

  @override
  _pagetowState createState() => _pagetowState();
}

class _pagetowState extends State<pagetow> {
  var selectedcountry;
  var selectedbranch;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: PaddingPlatform.twenty,
        color: ColorPlatform.colorpackground,
        child: Column(
          children: [
            Row(
              children: [
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
                      StringPlatform.contry,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: ColorPlatform.appbarsecond),
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
                      StringPlatform.branch,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: ColorPlatform.appbarsecond),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
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
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        hint: Text(
                          StringPlatform.thecity,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: ColorPlatform.colorfore),
                        ),
                        items: [
                          StringPlatform.cityone,
                          StringPlatform.citytow,
                          StringPlatform.citythree
                        ]
                            .map((e) => DropdownMenuItem(
                                  child: Text("$e",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: ColorPlatform.colorthree)),
                                  value: e,
                                ))
                            .toList(),
                        onChanged: (val) {
                          setState(() {
                            selectedcountry = val;
                          });
                        },
                        value: selectedcountry,
                      ),
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
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        hint: Text(
                          StringPlatform.branch,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: ColorPlatform.colorfore),
                        ),
                        items: [
                          StringPlatform.branchone,
                          StringPlatform.branchtow,
                          StringPlatform.branchthree
                        ]
                            .map((e) => DropdownMenuItem(
                                  child: Text("$e",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: ColorPlatform.colorthree)),
                                  value: e,
                                ))
                            .toList(),
                        onChanged: (val) {
                          setState(() {
                            selectedbranch = val;
                          });
                        },
                        value: selectedbranch,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
