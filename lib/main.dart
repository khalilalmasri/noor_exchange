import 'package:flutter/material.dart';
import 'package:alnoor/appbar.dart';
import 'package:alnoor/body.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: name(),
    );
  }
}
