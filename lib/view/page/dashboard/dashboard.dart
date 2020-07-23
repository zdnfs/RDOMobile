import 'package:flutter/material.dart';
import 'package:flutterxdana/view/widget/sidebar.dart';

class Dashboard extends StatelessWidget {
  static const String routeName = "flutterxdana/view/page/dashboard/dashboard.dart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(title: Text("Dashboard")),
      body: Center(child: Text("Dashboard"),),
    );
  }
}
