import 'package:flutter/material.dart';

class Tabbar1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBar(
        tabs: <Widget>[
          Tab(text: "Portfolio",),
          Tab(text: "Transaction on Progres",),
          Tab(text: "Product Performance",),
        ]);
  }
}
