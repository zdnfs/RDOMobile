import 'package:flutter/material.dart';
import 'package:flutterxdana/view/widget/sidebar3.dart';
import 'package:flutterxdana/view/widget/widgets.dart';

import '../../../constants.dart';

class TopUp extends StatelessWidget {
  static const String routeName = "flutterxdana/view/page/dashboard/5topup.dart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Sidebar3(),
        appBar: AppBar(title: Text("Top Up")),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(),
                  child: Text(
                    'Participation Unit Subscrip Form, suppotred by Proof of Pyment'
                        'photocopy of identity',
                    style: TextStyle(
                      fontSize: 16,
                      color: kTextColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: FixedNextBackButton()
    );
  }
}