import 'package:direct_select_flutter/direct_select_container.dart';
import 'package:flutter/material.dart';
import 'package:flutterxdana/view/widget/design/layout.dart';
import 'package:flutterxdana/view/widget/widgets.dart';
import '../../../../constants.dart';

class Sub5 extends StatefulWidget {
  @override
  _Sub5State createState() => _Sub5State();
}

class _Sub5State extends State<Sub5> {
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
                            'Transaction Detail',
                            style: TextStyle(
                              fontSize: 14,
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                        TextFieldDefault(text: ('Transaction Date'),),
                        TextFieldDefault(text: ('Product Date'),),
                        TextFieldDefault(text: ('Payment MEthod'),),
                        TextFieldDefault(text: ('Bank Account'),),
                        TextFieldDefault(text: ('Amount'),),
                        TextFieldDefault(text: ('Subscription Fee'),),
                        TextFieldDefault(text: ('Total Payment'),),
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
