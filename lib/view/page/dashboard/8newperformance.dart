import 'package:flutter/material.dart';
import 'package:flutterxdana/view/widget/design/layout.dart';
import 'package:flutterxdana/view/widget/sidebar3.dart';
import 'package:flutterxdana/view/widget/widgets.dart';

import '../../../constants.dart';

class NewPerform extends StatelessWidget {
  static const String routeName = "flutterxdana/view/page/dashboard/8newperform.dart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar3(),
      appBar: AppBar(title: Text("NewPerform")),
      body: NavPerf()
    );
  }
}

class NavPerf extends StatefulWidget {
  @override
  _NavPerfState createState() => _NavPerfState();
}

class _NavPerfState extends State<NavPerf> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ExpansionTile(
              title: Padding(
                padding: EdgeInsets.only(bottom: SizeConfig.blockVertical * 2, top: SizeConfig.blockVertical * 2),
                child: Container(
                  height: SizeConfig.blockHorizontal * 15,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Expansion(
                        title: 'Money Market',
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
            ExpansionTile(
              title: Padding(
                padding: EdgeInsets.only(bottom: SizeConfig.blockVertical * 2, top: SizeConfig.blockVertical * 2),
                child: Container(
                  height: SizeConfig.blockHorizontal * 15,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Expansion(
                        title: 'Fixed Income',
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

            ExpansionTile(
              title: Padding(
                padding: EdgeInsets.only(bottom: SizeConfig.blockVertical * 2, top: SizeConfig.blockVertical * 2),
                child: Container(
                  height: SizeConfig.blockHorizontal * 15,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Expansion(
                        title: 'Equity',
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
            ExpansionTile(
              title: Padding(
                padding: EdgeInsets.only(bottom: SizeConfig.blockVertical * 2, top: SizeConfig.blockVertical * 2),
                child: Container(
                  height: SizeConfig.blockHorizontal * 15,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Expansion(
                        title: 'Syariah Found',
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

            ExpansionTile(
              title: Padding(
                padding: EdgeInsets.only(bottom: SizeConfig.blockVertical * 2, top: SizeConfig.blockVertical * 2),
                child: Container(
                  height: SizeConfig.blockHorizontal * 15,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Expansion(
                        title: 'Balance Found',
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
          ]
      ),
    );
  }
}
