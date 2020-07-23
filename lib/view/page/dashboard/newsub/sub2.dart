import 'package:direct_select_flutter/direct_select_container.dart';
import 'package:flutter/material.dart';
import 'package:flutterxdana/view/page/dashboard/newsub/sub3.dart';
import 'package:flutterxdana/view/page/dashboard/switching/switching3.dart';
import 'package:flutterxdana/view/widget/design/layout.dart';
import 'package:flutterxdana/view/widget/widgets.dart';
import '../../../../constants.dart';
import '../4newsub.dart';
import '../7switching.dart';

class Sub2 extends StatefulWidget {
  @override
  _Sub2State createState() => _Sub2State();
}

class _Sub2State extends State<Sub2> {
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
                            'Product',
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
                            'Subscription Amount',
                            style: TextStyle(
                              fontSize: 14,
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                        TextFieldDefault(text: ('Subscription Amount'),),
                        TextFieldDefault(text: ('Subscription Fee'),),
                        TextFieldDefault(text: ('Total Payment'),),
                        Padding(
                          padding: EdgeInsets.symmetric(),
                          child: Text(
                            'Payment',
                            style: TextStyle(
                              fontSize: 14,
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                        TextFieldDefault(text: ('Payment Method'),), //dropdown
                        TextFieldDefault(text: ('bank account'),),  //bankaccount
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: FixedNextBackButton(
          routeNext: Sub3(),
          routeBack: NewSub(),
        )
    );
  }
}
