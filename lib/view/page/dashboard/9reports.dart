import 'package:flutter/material.dart';
import 'package:flutterxdana/view/page/dashboard/report/report1.dart';
import 'package:flutterxdana/view/page/dashboard/report/report2.dart';
import 'package:flutterxdana/view/page/dashboard/report/report3.dart';
import 'package:flutterxdana/view/page/dashboard/report/report4.dart';
import 'package:flutterxdana/view/widget/design/layout.dart';
import 'package:flutterxdana/view/widget/sidebar3.dart';
import 'package:flutterxdana/view/widget/widgets.dart';

class Reports extends StatelessWidget {
  static const String routeName = "flutterxdana/view/page/dashboard/9reports.dart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar3(),
      appBar: AppBar(title: Text("Reports")),
      body: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: SizeConfig.blockHorizontal * 3, bottom: SizeConfig.blockVertical * 2),
                child: Container(
                  height: SizeConfig.blockHorizontal * 20,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Material(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Report1(),
                                ),
                              );
                            },
                            child: ListIcon(
                              icon: Icons.insert_chart,
                              title: 'Portofolio Summary ',
                            ),
                          )
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: SizeConfig.blockHorizontal * 3, bottom: SizeConfig.blockVertical * 2),
                child: Container(
                  height: SizeConfig.blockHorizontal * 20,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Material(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Report2(),
                                ),
                              );
                            },
                            child: ListIcon(
                              icon: Icons.chrome_reader_mode,
                              title: 'Historical Transaction ',
                            ),
                          )
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: SizeConfig.blockHorizontal * 3, bottom: SizeConfig.blockVertical * 2),
                child: Container(
                  height: SizeConfig.blockHorizontal * 20,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Material(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Report3(),
                                ),
                              );
                            },
                            child: ListIcon(
                              icon: Icons.assignment,
                              title: 'Ivestment by Product ',
                            ),
                          )
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: SizeConfig.blockHorizontal * 3, bottom: SizeConfig.blockVertical * 2),
                child: Container(
                  height: SizeConfig.blockHorizontal * 20,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Material(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Report4(),
                                ),
                              );
                            },
                            child: ListIcon(
                              icon: Icons.note,
                              title: 'Mutual Found Consolidation ',
                            ),
                          )
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}