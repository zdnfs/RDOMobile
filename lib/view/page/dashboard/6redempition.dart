import 'package:flutter/material.dart';
import 'package:flutterxdana/view/page/dashboard/redempition/redempition2.dart';
import 'package:flutterxdana/view/widget/sidebar3.dart';
import 'package:flutterxdana/view/widget/widgets.dart';
import '../../../constants.dart';
import '2investpro.dart';

class Redempition extends StatelessWidget {
  static const String routeName = "flutterxdana/view/page/dashboard/6redempition.dart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar3(),
      appBar: AppBar(title: Text("Redempition")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(),
                child: Text(
                  'The Redempition Price each Mutual Fund '
                      'Prarticipation Unit is base on the Net Asset Value per'
                      'Participation Unit at the end of the Bourse Day at which '
                      'time the redempition is acknowledged.',
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
      bottomNavigationBar: FixedNextBackButton(
        routeNext: Redemption2(),
        routeBack: InvestPro(),
      )
    );
  }
}