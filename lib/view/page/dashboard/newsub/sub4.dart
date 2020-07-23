import 'package:direct_select_flutter/direct_select_container.dart';
import 'package:flutter/material.dart';
import 'package:flutterxdana/view/page/dashboard/newsub/sub3.dart';
import 'package:flutterxdana/view/page/dashboard/newsub/sub5.dart';
import 'package:flutterxdana/view/page/dashboard/switching/switching3.dart';
import 'package:flutterxdana/view/widget/design/layout.dart';
import 'package:flutterxdana/view/widget/widgets.dart';
import '../../../../constants.dart';
import '../4newsub.dart';
import '../7switching.dart';

class Sub4 extends StatefulWidget {
  @override
  _Sub4State createState() => _Sub4State();
}

class _Sub4State extends State<Sub4> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(title: Text("Subscription")),
        body: DirectSelectContainer(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                verticalDirection: VerticalDirection.down,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(),
                          child: UploadImage()
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: FixedNextBackButton(
          routeNext: Sub5(),
          routeBack: Sub3(),
        )
    );
  }
}
