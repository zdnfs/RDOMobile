import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutterxdana/constants.dart';
import 'package:flutterxdana/view/page/index/appinfo/appinfo.dart';
import 'package:flutterxdana/view/page/index/auth/auth.dart';
import 'package:flutterxdana/view/page/index/auth/login.dart';
import 'package:flutterxdana/view/page/index/compro/compro.dart';
import 'package:flutterxdana/view/page/index/daily/daily.dart';
import 'package:flutterxdana/view/page/index/daily/test.dart';
import 'package:flutterxdana/view/page/index/userguide/userguide.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _halIndex = 1;

  final AppInfo _appInfo = new AppInfo();
  final Loginn _auth = new Loginn();
  final ComPro _comPro = new ComPro();
  final Daily _daily = new Daily();
  final UserGuide _userGuide = new UserGuide();

  Widget _tampilkanHal = new Daily();

//  rooting
  Widget _pilihHal (int hal){
    switch(hal) {
      case 0: return _auth;
      break;
      case 1: return _daily;
      break;
      case 2: return _comPro;
      break;
      case 3: return _userGuide;
      break;
      case 4: return _appInfo;
      break;
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  _tampilkanHal,
      bottomNavigationBar: CurvedNavigationBar(
          items: <Widget>[
            Icon(Icons.lock_open, color: kBackgroundColor),
            Icon(Icons.insert_chart, color: kBackgroundColor),
            Icon(Icons.event_note, color: kBackgroundColor),
            Icon(Icons.account_balance, color: kBackgroundColor),
            Icon(Icons.info, color: kBackgroundColor),
          ],
        color: kPrimaryColor,
        buttonBackgroundColor: kSecondaryColor,
        backgroundColor: kBackgroundColor,
        animationCurve: Curves.easeInOutCirc,
        animationDuration: Duration(milliseconds: 500),
        height: 60,
        index: _halIndex,
        onTap: (int tekan){
            setState(() {
              _tampilkanHal = _pilihHal(tekan);
            });
        },
        ),
    );
  }
}
