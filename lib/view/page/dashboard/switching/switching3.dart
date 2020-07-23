import 'package:direct_select_flutter/direct_select_container.dart';
import 'package:flutter/material.dart';
import 'package:flutterxdana/view/page/dashboard/redempition/redempition3.dart';
import 'package:flutterxdana/view/page/dashboard/switching/switching4.dart';
import 'package:flutterxdana/view/widget/design/layout.dart';
import 'package:flutterxdana/view/widget/widgets.dart';
import '../../../../constants.dart';
import '../6redempition.dart';
import '../7switching.dart';

class Switching3 extends StatefulWidget {
  @override
  _Switching3State createState() => _Switching3State();
}

class _Switching3State extends State<Switching3> {
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
                            'Product',
                            style: TextStyle(
                              fontSize: 14,
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                        TextFieldDefault(text: ('Switch Product Form'),),
                        TextFieldDefault(text: ('Switch Product To'),),
                        Padding(
                          padding: EdgeInsets.symmetric(),
                          child: Text(
                            'Switching',
                            style: TextStyle(
                              fontSize: 14,
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                        TextFieldDefault(text: ('Switching Amount'),),
                        TextFieldDefault(text: ('Switching Fee'),),
                        Padding(
                          padding: EdgeInsets.symmetric(),
                          child: Term()
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
          routeNext: Switching4(),
          routeBack: Switching(),
        )
    );
  }
}
