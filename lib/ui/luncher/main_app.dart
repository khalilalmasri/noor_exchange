import 'package:alnoor/appbar.dart';
import 'package:alnoor/core/bloc/splash/splash_bloc.dart';
import 'package:alnoor/core/network/repository/price_currency/price_currency_repository.dart';
import 'package:alnoor/core/network/repository/price_currency/price_currency_repository_imp.dart';
import 'package:alnoor/ui/splach_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app_config.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                SplashBloc(repository: PriceCurrencyRepositoryImpl()))
      ],
      child: MaterialApp(
        title: Config.title,
        debugShowCheckedModeBanner: Config.isDebug,
        // debugShowCheckedModeBanner: false,
        initialRoute: SplashScreen.routeName,
        routes: {
          SplashScreen.routeName: (context) => SplashScreen(),
          AppBarWidget.routeName: (context) => AppBarWidget()
        },
        // home: appbar(),
        theme: ThemeData(
          fontFamily: "AMINE_MOD",
        ),
      ),
    );
    // return  MaterialApp(
    //     title: Config.title,
    //     debugShowCheckedModeBanner: Config.isDebug,
    //     // debugShowCheckedModeBanner: false,
    //     home: appbar(),
    //     theme: ThemeData(
    //       fontFamily: "AMINE_MOD",
    //     ),
    //
    // );
  }
}
