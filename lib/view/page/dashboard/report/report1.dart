import 'package:flutter/material.dart';
import 'package:flutterxdana/view/widget/sidebar3.dart';
import 'package:flutterxdana/view/widget/widgets.dart';

class Report1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Report1")),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text("Date: "),
                      Text("22 Jun 2017 "),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text("Investment Total:"),
                      Text("IDR 1,121,725")
                    ],
                  )
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: ProSum(
                  bankName: "MAY BANK SYARIAH EQUITY FOUND",
                  nav: "daaadad",
                  unit: "sasasas",
                  amount: "121213",
                )
            ),
          ],
        ),
      ),
    );
  }
}