import 'package:flutter/material.dart';

import '../../../../constants.dart';

class AppInfo extends StatefulWidget {
  @override
  _AppInfoState createState() => _AppInfoState();
}

class _AppInfoState extends State<AppInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 136,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/img/xdana_logo.png'))
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 70, bottom: 16),
              child: Text(
                "Version 2.0.4",
                style: TextStyle(
                fontSize: 24.0,
                color: kPrimaryColor,
                ),
              ),
            ),
            Text(
              "2017 PT XDANA INDONESIA \n ALL Right Reserved",
                style: TextStyle(
                  fontSize: 16.0,
                  color: kPrimaryColor,
                ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
