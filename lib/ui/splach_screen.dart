import 'dart:async';

import 'package:alnoor/appbar.dart';
import 'package:alnoor/core/bloc/splash/bloc.dart';
import 'package:alnoor/core/bloc/splash/splash_bloc.dart';
import 'package:alnoor/core/storage/local_data_shared_preference.dart';
import 'package:alnoor/shared/them.dart';
import 'package:alnoor/shared/widget/error/no_internet_widget.dart';
import 'package:alnoor/shared/words.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/src/provider.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = "/splash";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void navigationToHom() {
    Navigator.of(context).pushNamedAndRemoveUntil(
        AppBarWidget.routeName, (Route<dynamic> route) => false);
  }
  _startSplashScreenToHomePage() {
    var _duration = Duration(milliseconds: 100);
    return Timer(_duration, navigationToHom);
  }
  @override
  void initState() {
    context.read<SplashBloc>().add(LoadSplashData());


    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPlatform.colorpackground,
      body: BlocBuilder<SplashBloc, SplashState>(
        builder: (context, state)   {
          if (state is SplashHasData) {
            _startSplashScreenToHomePage();
            return _getPageContent();
          } else if (state is SplashLoading) {
            return _getPageContent();
          }else if (state is SplashNoInternetConnection) {
            return
              NoInternetWidget(
              message: StringPlatform.no_internet,
              onPressed: () {
                context.read<SplashBloc>().add(LoadSplashData());
              },
            );
          } else {
            return Center(child: Text(""));
          }
        },
      ),
    );
  }

  Widget _getPageContent() {
    return SafeArea(
      child: Stack(
        children: [
          Positioned(
              bottom: 0,
              top: 0,
              left: 0,
              right: 0,
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                // child: Image.asset(
                //   ImagesAssets.appBackground,
                //   fit: BoxFit.fill,
                // ),
                child: Container(),
              )),
          Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width / 2,
              child: Image.asset(
                'images/logo.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
