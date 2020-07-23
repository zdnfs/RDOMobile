import 'package:direct_select_flutter/direct_select_container.dart';
import 'package:flutter/material.dart';
import 'package:flutterxdana/view/page/dashboard/switching/switching3.dart';
import 'package:flutterxdana/view/widget/design/layout.dart';
import 'package:flutterxdana/view/widget/widgets.dart';
import '../../../../constants.dart';
import '../7switching.dart';

class Switching2 extends StatefulWidget {
  @override
  _Switching2State createState() => _Switching2State();
}

class _Switching2State extends State<Switching2> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(title: Text("Switching")),
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
                          child: Text(
                            'Switch Product From',
                            style: TextStyle(
                              fontSize: 14,
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                        TextFieldDefault(text: ('Product'),),
                        TextFieldDefault(text: ('Unit'),),
                        TextFieldDefault(text: ('Last NAV'),),
                        TextFieldDefault(text: ('Amount'),),
                        Padding(
                          padding: EdgeInsets.symmetric(),
                          child: Text(
                            'Switch Product To',
                            style: TextStyle(
                              fontSize: 14,
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                        TextFieldDefault(text: ('Product'),),
                        TextFieldDefault(text: ('Product Risk Profile'),),
                        Padding(
                          padding: EdgeInsets.symmetric(),
                          child: Text(
                            'Switch',
                            style: TextStyle(
                              fontSize: 14,
                              color: kPrimaryColor,
                            ),
                          ),
                        ),

                        TextFieldDefault(text: ('Switch Fee'),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: FixedNextBackButton(
          routeNext: Switching3(),
          routeBack: Switching(),
        )
    );
  }
}
