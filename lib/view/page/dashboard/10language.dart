import 'package:flutter/material.dart';
import 'package:flutterxdana/view/widget/design/layout.dart';
import 'package:flutterxdana/view/widget/sidebar3.dart';
import 'package:flutterxdana/view/widget/widgets.dart';

import '../../../constants.dart';

class Language extends StatelessWidget {
  static const String routeName = "flutterxdana/view/page/dashboard/10Language.dart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar3(),
      appBar: AppBar(title: Text("Language")),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              SearchBtn(),
              Term(),
              Term(),
              Container(
                margin: EdgeInsets.all(20),
                height: SizeConfig.blockHorizontal*40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    ProSum(
                      bankName: "asdsdasda",
                      nav: "daaadad",
                      unit: "sasasas",
                      amount: "121213",
                    ),
                    ProSum(
                      bankName: "asdsdasda",
                      nav: "daaadad",
                      unit: "sasasas",
                      amount: "121213",
                    ),
                    ProSum(
                      bankName: "asdsdasda",
                      nav: "daaadad",
                      unit: "sasasas",
                      amount: "121213",
                    ),
                  ],
                ),
              ),
              ProSum(
                bankName: "asdsdasda",
                nav: "daaadad",
                unit: "sasasas",
                amount: "121213",
              ),
              ExpansionTile(
                title: Padding(
                  padding: EdgeInsets.only(bottom: SizeConfig.blockVertical * 2, top: SizeConfig.blockVertical * 2),
                  child: Container(
                    height: SizeConfig.blockHorizontal * 15,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Expansion(
                          title: 'Index',
                          color: kPrimaryColor,
                        ),
                      ],
                    ),
                  ),
                ),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: SizeConfig.blockHorizontal * 3, bottom: SizeConfig.blockVertical * 2, top: SizeConfig.blockVertical * 2),
                    child: Container(
                      height: SizeConfig.blockHorizontal * 20,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Performance(
                            title: "Bahana",
                            navUnit: "IDR 16,039,32",
                            day1: "-0.15 %",
                            day3: "1.32 %",
                            mount1: "2.34 %",
                            mount3: "5.67 %",
                            year1: "8.90 %",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
