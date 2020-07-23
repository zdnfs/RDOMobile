import 'package:direct_select_flutter/direct_select_container.dart';
import 'package:direct_select_flutter/direct_select_item.dart';
import 'package:direct_select_flutter/direct_select_list.dart';
import 'package:flutter/material.dart';
import 'package:flutterxdana/view/widget/design/layout.dart';
import 'package:flutterxdana/view/widget/widgets.dart';
import 'package:intl/intl.dart';
import '../../../../constants.dart';

class Profile2 extends StatefulWidget {
  @override
  _Profile2State createState() => _Profile2State();
}

class _Profile2State extends State<Profile2> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      key: scaffoldKey,
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
                          'About Me',
                          style: TextStyle(
                            fontSize: 14,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                      TextFieldDefault(text: ('Address (AS KTP)'),),
                      TextFieldDefault(text: ('Domicile Address'),),
                      TextFieldDefault(text: ('Mailing Address'),),

                      Padding(
                        padding: EdgeInsets.symmetric(),
                        child: Text(
                          'Phone',
                          style: TextStyle(
                            fontSize: 14,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
//                      Card(
//                        child: Form(
//                          child: Column(
//                            children: <Widget>[
//                              TextFieldDefault(text: ('Home Phone'),),
//                              TextFieldDefault(text: ('Cell Phone'),),
//                              TextFieldDefault(text: ('Company Phone'),),
//                              TextFieldDefault(text: ('Fax'),),
//                              TextFieldDefault(text: ('Email'),),
//                            ],
//                          ),
//                        ),
//                      ),

                      TextFieldDefault(text: ('Home Phone'),),
                      TextFieldDefault(text: ('Cell Phone'),),
                      TextFieldDefault(text: ('Company Phone'),),
                      TextFieldDefault(text: ('Fax'),),
                      TextFieldDefault(text: ('Email'),),


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
