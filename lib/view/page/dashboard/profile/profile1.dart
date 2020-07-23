import 'package:direct_select_flutter/direct_select_container.dart';
import 'package:direct_select_flutter/direct_select_item.dart';
import 'package:direct_select_flutter/direct_select_list.dart';
import 'package:flutter/material.dart';
import 'package:flutterxdana/view/widget/design/layout.dart';
import 'package:flutterxdana/view/widget/widgets.dart';
import 'package:intl/intl.dart';
import '../../../../constants.dart';

class Profile1 extends StatefulWidget {
  @override
  _Profile1State createState() => _Profile1State();
}

class _Profile1State extends State<Profile1> {
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
                      TextFieldDefault(text: ('SID Number'),),
                      TextFieldDefault(text: ('CIF Number'),),
                      TextFieldDefault(text: ('First Name'),),
                      TextFieldDefault(text: ('Middle Name'),),
                      TextFieldDefault(text: ('Last Name'),),
                      TextFieldDefault(text: ('Full Name'),),
                      TextFieldDefault(text: ('Gender'),),
                      TextFieldDefault(text: ('Place of Birth'),),
                      TextFieldDefault(text: ('Date of Birth'),),

                      Padding(
                        padding: EdgeInsets.symmetric(),
                        child: Text(
                          'Aditional  Info',
                          style: TextStyle(
                            fontSize: 14,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                      TextFieldDefault(text: ('Nationality'),),
                      TextFieldDefault(text: ('Occupation'),),
                      TextFieldDefault(text: ('Marital Status'),),
                      TextFieldDefault(text: ('Education'),),
                      TextFieldDefault(text: ('Religion'),),

                      Padding(
                        padding: EdgeInsets.symmetric(),
                        child: Text(
                          'Identity',
                          style: TextStyle(
                            fontSize: 14,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                      TextFieldDefault(text: ('NPWP'),),
                      TextFieldDefault(text: ('ID Type'),),
                      TextFieldDefault(text: ('Id Number'),),
                      TextFieldDefault(text: ('Identity Issue Date'),),
                      TextFieldDefault(text: ('Identity Expires Date'),),


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
