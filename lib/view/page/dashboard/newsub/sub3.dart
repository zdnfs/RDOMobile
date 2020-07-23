import 'package:direct_select_flutter/direct_select_container.dart';
import 'package:flutter/material.dart';
import 'package:flutterxdana/view/page/dashboard/newsub/sub2.dart';
import 'package:flutterxdana/view/page/dashboard/newsub/sub4.dart';
import 'package:flutterxdana/view/widget/design/layout.dart';
import 'package:flutterxdana/view/widget/widgets.dart';
import '../../../../constants.dart';

class Sub3 extends StatefulWidget {
  @override
  _Sub3State createState() => _Sub3State();
}

class _Sub3State extends State<Sub3> {
  bool _isSelected = false;
  show(){
    setState(() {
      _isSelected = !_isSelected;
    });
  }

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
                        TextFieldDefault(text: ('Payment Method'),),
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
                        TextFieldDefault(text: ('Subscription Amount'),),
                        TextFieldDefault(text: ('Subscription Fee'),),
                        TextFieldDefault(text: ('Total Payment'),),
                        Padding(
                          padding: EdgeInsets.symmetric(),
                          child: Text(
                            'Bank',
                            style: TextStyle(
                              fontSize: 14,
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                        TextFieldDefault(text: ('Bank Name'),), //dropdown
                        TextFieldDefault(text: ('Bank account'),),  //bankaccount
                        TextFieldDefault(text: ('Account Name'),),
                        CheckboxListTile(
                          title: Padding(
                              padding: EdgeInsets.symmetric(),
                              child: Term()
                          ),
                          value: _isSelected,
                          onChanged: (bool newValue) {
                            setState(() {
                              _isSelected = newValue;
                            });
                          },
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
          routeNext: Sub4(),
          routeBack: Sub2(),
        )
    );
  }
}
