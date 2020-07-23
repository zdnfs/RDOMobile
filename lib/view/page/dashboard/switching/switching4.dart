import 'package:direct_select_flutter/direct_select_container.dart';
import 'package:flutter/material.dart';
import 'package:flutterxdana/view/page/dashboard/redempition/redempition3.dart';
import 'package:flutterxdana/view/widget/design/layout.dart';
import 'package:flutterxdana/view/widget/widgets.dart';
import '../../../../constants.dart';
import '../6redempition.dart';

class Switching4 extends StatefulWidget {
  @override
  _Switching4State createState() => _Switching4State();
}

class _Switching4State extends State<Switching4> {
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
                            'Customer',
                            style: TextStyle(
                              fontSize: 14,
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                        TextFieldDefault(text: ('Full Name'),),
                        TextFieldDefault(text: ('CIF Number'),),
                        TextFieldDefault(text: ('SID Number'),),
                        Padding(
                          padding: EdgeInsets.symmetric(),
                          child: Text(
                            'Transaction Date',
                            style: TextStyle(
                              fontSize: 14,
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                        TextFieldDefault(text: ('Transaction Date'),),
                        TextFieldDefault(text: ('From'),),
                        TextFieldDefault(text: ('To Product'),),
                        TextFieldDefault(text: ('Switching Units'),),
                        TextFieldDefault(text: ('Switching Fee'),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
