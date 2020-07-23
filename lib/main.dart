import 'package:flutter/material.dart';
import 'package:flutterxdana/constants.dart';
import 'package:flutterxdana/view/page/splash.dart';
import 'package:flutterxdana/view/widget/navbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xdana',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: Splash(),
    );
  }
}
