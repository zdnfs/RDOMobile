import 'package:flutter/material.dart';
import 'package:flutterxdana/view/widget/design/layout.dart';
import 'package:flutterxdana/view/widget/widgets.dart';

class InvestPro2 extends StatefulWidget {
  @override
  _InvestPro2State createState() => _InvestPro2State();
}

class _InvestPro2State extends State<InvestPro2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: SizeConfig.blockHorizontal * 3, bottom: SizeConfig.blockVertical * 2),
              child: TIP(
                percent: '5,36 %',
                title: 'Smart Equity ',
                value: 'Uploaded',
                color: Color(0xFFC0FF8C),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: SizeConfig.blockHorizontal * 3, bottom: SizeConfig.blockVertical * 2),
              child: TIP(
                percent: '5,36 %',
                title: 'Smart Equity ',
                value: 'CS Aproved',
                color: Color(0xFFFFF78C)
              ),

            ),
            Padding(
              padding: EdgeInsets.only(left: SizeConfig.blockHorizontal * 3, bottom: SizeConfig.blockVertical * 2),
              child: TIP(
                percent: '5,36 %',
                title: 'Smart Equity ',
                value: 'Expired',
                color: Color(0xFFFFD08C)
              ),

            )
          ],
        ),
      ),
    );
  }
}
