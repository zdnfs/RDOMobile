import 'package:flutter/material.dart';

import '../../../../constants.dart';

class UserGuide extends StatefulWidget {
  @override
  _UserGuideState createState() => _UserGuideState();
}

class _UserGuideState extends State<UserGuide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: <Widget>[
            SizedBox(height: 100.0,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(image: AssetImage('assets/img/xdana_logo.png'), height: 136,),
                    SizedBox(width: 10.0,),
                    Text("Investasi Untuk Semua", style: TextStyle(color: kPrimaryColor, fontSize: 15.0, fontWeight: FontWeight.bold),)
                  ]
              ),
            ),
            SizedBox(height: 10.0,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(),
                        child: Center(
                          child: new Text(
                            'PT XDANA INDONESIA',
                            style: TextStyle(
                              fontSize: 24,
                              color: kPrimaryColor,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                    ),
                  ]
              ),
            ),
            SizedBox(height: 20.0,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(),
                        child: Center(
                          child: new Text(
                            'STC SENAYAN \n Lantai 3 Unit 189 Jl Asia Afrika Pintu XI \n Glora Bungkarno \n Jakarta 10270',
                            style: TextStyle(
                              fontSize: 18,
                              color: kPrimaryColor,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                    ),
                  ]
              ),
            ),
            SizedBox(height: 20.0,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(),
                        child: Center(
                          child: new Text(
                            'Phone : \n (021) 2598 1423',
                            style: TextStyle(
                              fontSize: 18,
                              color: kPrimaryColor,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                    ),
                  ]
              ),
            ),
            SizedBox(height: 20.0,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(),
                        child: Center(
                          child: new Text(
                            'Email : \n cs@xdana.com',
                            style: TextStyle(
                              fontSize: 18,
                              color: kPrimaryColor,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                    ),
                  ]
              ),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image(image: AssetImage('assets/img/inklusikeuangan.jpg'), height: 70,),
                    Image(image: AssetImage('assets/img/OJKlogo.png'), height: 70,)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}