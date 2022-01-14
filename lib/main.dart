import 'package:alnoor/core/bloc/app_bloc_observer.dart';
import 'package:alnoor/ui/luncher/main_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Bloc.observer = AppBlocObserver();
  runApp(MyApp());
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

double syusbuy = 3500;
double syussale = 3600;
double sytbuy = 300;
double sytsale = 310;
double ustbuy = 12;
double ustsale = 12.5;
