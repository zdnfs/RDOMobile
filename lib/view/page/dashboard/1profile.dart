import 'package:flutter/material.dart';
import 'package:flutterxdana/view/page/dashboard/profile/profile1.dart';
import 'package:flutterxdana/view/page/dashboard/profile/profile2.dart';
import 'package:flutterxdana/view/page/dashboard/profile/profile3.dart';
import 'package:flutterxdana/view/page/dashboard/profile/profile4.dart';
import 'package:flutterxdana/view/widget/sidebar.dart';
import 'package:flutterxdana/view/widget/sidebar2.dart';
import 'package:flutterxdana/view/widget/sidebar3.dart';
import 'package:flutterxdana/view/widget/tabbar.dart';

import '../../../data.dart';

class Profile extends StatelessWidget {
  static const String routeName = "flutterxdana/view/page/dashboard/1profile.dart";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          drawer: Sidebar3(),
          appBar: AppBar(title: Text("Profile"),
            bottom: TabBar(
                tabs: <Widget>[
                  Tab(text: "Personal Data",),
                  Tab(text: "Contact Detail",),
                  Tab(text: "Bank Account",),
                  Tab(text: "Other Info",),
                ]),
          ),
          body: TabBarView(
            children: <Widget>[
              Profile1(),
              Profile2(),
              Profile3(),
              Profile4(),
            ],),
        ),
      ),
    );
  }
}