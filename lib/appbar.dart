import 'package:alnoor/body.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'shared/them.dart';
import '../shared/words.dart';

class name extends StatefulWidget {
  name({Key? key}) : super(key: key);

  @override
  _nameState createState() => _nameState();
}

class _nameState extends State<name> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 90,
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
                  tabs: const [
                    Tab(
                      child: Text(StringPlatform.currency,
                          style: StylePlatform.StyleTabpar),
                    ),
                    Tab(
                      child: Text(StringPlatform.calculator,
                          style: StylePlatform.StyleTabpar),
                    ),
                  ]),
            ),
            body: bodyy(),
          ),
        ));
  }
}
