import 'package:direct_select_flutter/direct_select_container.dart';
import 'package:flutter/material.dart';
import 'package:flutterxdana/view/page/dashboard/redempition/redempition3.dart';
import 'package:flutterxdana/view/widget/design/layout.dart';
import 'package:flutterxdana/view/widget/widgets.dart';
import '../../../../constants.dart';
import '../6redempition.dart';

class Redemption2 extends StatefulWidget {
  @override
  _Redemption2State createState() => _Redemption2State();
}

class _Redemption2State extends State<Redemption2> {
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
                      TextFieldDefault(text: ('Unit'),),
                      TextFieldDefault(text: ('Last NAV'),),
                      TextFieldDefault(text: ('Amount'),),
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
                      TextFieldDefault(text: ('Redemption Fee'),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: FixedNextBackButton(
        routeNext: Redemption3(),
        routeBack: Redempition(),
      )
    );
  }
}
