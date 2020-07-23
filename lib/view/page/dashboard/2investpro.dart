import 'package:flutter/material.dart';
import 'package:flutterxdana/view/widget/sidebar3.dart';

import 'investpro/investpro1.dart';
import 'investpro/investpro2.dart';

class InvestPro extends StatelessWidget {
  static const String routeName = "flutterxdana/view/page/dashboard/2investpro.dart";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          drawer: Sidebar3(),
          appBar: AppBar(title: Text("InvestPro"),
            bottom: TabBar(
                tabs: <Widget>[
                  Tab(text: "Portfolio",),
                  Tab(text: "Transaction on Progres",),
                  Tab(text: "Product Performance",),
                ]),
          ),
          body: TabBarView(
            children: <Widget>[
              InvestPro1(),
              InvestPro2(),
              Center(child: Text("3"),),
            ],),
        ),
      ),
    );
  }
}