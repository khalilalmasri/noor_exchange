import 'package:alnoor/tabbarv.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'shared/them.dart';
import '../shared/words.dart';

class AppBarWidget extends StatefulWidget {
  static const routeName = "/app_bar";
  AppBarWidget({Key? key}) : super(key: key);

  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
            length: 4,
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Scaffold(
                appBar: AppBar(
                  toolbarHeight: 110,
                  backgroundColor: ColorPlatform.colorContainerBackground,
                  flexibleSpace: FlexibleSpaceBar(
                    titlePadding: EdgeInsets.only(bottom: 0),
                    title: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/up.jpg"),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  shadowColor: ColorPlatform.golden,
                  elevation: 5,
                  bottom: TabBar(
                      labelStyle: TextStyle(height: 3, fontFamily: "AMINE_MOD"),
                      indicatorSize: TabBarIndicatorSize.label,
                      unselectedLabelColor: ColorPlatform.golden,
                      labelColor: ColorPlatform.colorwhite,
                      isScrollable: false,
                      indicatorColor: ColorPlatform.golden,
                      labelPadding: EdgeInsets.only(bottom: 0),
                      indicatorWeight: 2,
                      tabs:  [
                        Tab(
                          child: Text(StringPlatform.currency,
                              style: StylePlatform.StyleTabpar),
                        ),
                        Tab(
                          child: Text(StringPlatform.calculator,
                              style: StylePlatform.StyleTabpar),
                        ),
                        Tab(
                          child: Text(
                            StringPlatform.advertiz,
                            style: StylePlatform.StyleTabpar,
                          ),
                        ),
                        Tab(
                          child: Text(
                            StringPlatform.we,
                            style: StylePlatform.StyleTabpar,
                          ),
                        ),
                      ]),
                ),
                body: tabbarv(),
              ),
            )));
  }
}
