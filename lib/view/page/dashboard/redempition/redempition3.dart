import 'package:direct_select_flutter/direct_select_container.dart';
import 'package:flutter/material.dart';
import 'package:flutterxdana/view/page/dashboard/redempition/redempition2.dart';
import 'package:flutterxdana/view/page/dashboard/redempition/redempition4.dart';
import 'package:flutterxdana/view/widget/design/layout.dart';
import 'package:flutterxdana/view/widget/widgets.dart';
import '../../../../constants.dart';
import '../6redempition.dart';

class Redemption3 extends StatefulWidget {
  @override
  _Redemption3State createState() => _Redemption3State();
}

class _Redemption3State extends State<Redemption3> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(title: Text("Redempition")),
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
                      Padding(
                        padding: EdgeInsets.symmetric(),
                        child: Text(
                          'Redemption',
                          style: TextStyle(
                            fontSize: 14,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                      TextFieldDefault(text: ('Redemption Amount'),),
                      TextFieldDefault(text: ('Redemption Fee'),),
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
        routeNext: Redemption4(),
        routeBack: Redemption2(),
      )
    );
  }
}
