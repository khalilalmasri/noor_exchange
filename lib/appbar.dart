import 'package:alnoor/body.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../shared/colors.dart';
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
        length: 4,
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            appBar: AppBar(
              title: Container(
                height: 100,
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  StringPlatform.companyname,
                  style: TextStyle(
                      fontSize: 30, color: ColorPlatform.appbarsecond),
                ),
              ),
              backgroundColor: ColorPlatform.appbarcolor,
              bottom: TabBar(
                  unselectedLabelColor: ColorPlatform.appbarsecond,
                  labelColor: ColorPlatform.colorblack,
                  isScrollable: false,
                  indicatorColor: ColorPlatform.appbarsecond,
                  indicatorWeight: 4,
                  tabs: const [
                    Tab(
                      child: Text(
                        StringPlatform.currency,
                      ),
                      icon: Icon(Icons.attach_money_rounded),
                    ),
                    Tab(
                      child: Text(StringPlatform.exchang),
                      icon: Icon(Icons.mail_outlined),
                    ),
                    Tab(
                      child: Text(StringPlatform.calculator),
                      icon: Icon(Icons.calculate_rounded),
                    ),
                    Tab(
                      child: Text(StringPlatform.graph),
                      icon: Icon(
                        Icons.show_chart_rounded,
                      ),
                    )
                  ]),
              actions: [],
              leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu),
              ),
            ),
            //drawer: Drawer(),
            body: bodyy(),
          ),
        ));
  }
}
