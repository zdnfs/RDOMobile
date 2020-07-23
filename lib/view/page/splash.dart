import 'package:flutter/material.dart';
import 'package:flutterxdana/view/widget/navbar.dart';
import 'package:flutterxdana/view/widget/sidebar3.dart';

import 'dashboard/2investpro.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState(){
    super.initState();
    _checkForSession().then(
          (status){
            if (status){
              _navigateToHome();
            } else {
              _navigateToLogin();
            }
        }
    );
  }
  Future <bool> _checkForSession() async{
    await Future.delayed(Duration(milliseconds: 5000),(){});
    return false;
  }
  
  void _navigateToHome(){
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (BuildContext context) => InvestPro()
      )
    );
  }

  void _navigateToLogin(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (BuildContext context) => BottomNavBar()
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 200.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image(image: AssetImage('assets/img/inklusikeuangan.jpg'), height: 70,),
                  Image(image: AssetImage('assets/img/OJKlogo.png'), height: 70,)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: <Widget>[
                  Image(image: AssetImage('assets/img/xdana_logo.png'), height: 200,),
                ],
              ),
            ),
          ]
        ),
      ),
    );
  }
}
