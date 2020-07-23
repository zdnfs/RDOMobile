import 'package:flutter/material.dart';
import 'package:flutterxdana/view/widget/design/layout.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutterxdana/view/widget/widgets.dart';

import '../../../../constants.dart';

class InvestPro1 extends StatefulWidget {
  @override
  _InvestPro1State createState() => _InvestPro1State();
}

class _InvestPro1State extends State<InvestPro1> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    var data=[
      AviAtm("Online", 90, Color(0xFFC0FF8C)),
      AviAtm("Offline", 5, Color(0xFFFFF78C)),
      AviAtm("N/A", 5, Color(0xFFFFD08C)),
    ];

    var series=[
      charts.Series<AviAtm, String>(
        domainFn: (AviAtm AviAtm,_)=>AviAtm.status,
        measureFn: (AviAtm AviAtm,_)=>AviAtm.value,
        colorFn: (AviAtm AviAtm,_)=>AviAtm.color,
        id: 'Avi Atm',
        data: data,
      )
    ];

    var chart = charts.PieChart(
      series,
      defaultRenderer: charts.ArcRendererConfig(
//          arcRendererDecorators: [charts.ArcLabelDecorator()],
          arcWidth: 115
      ),
      animate: true,
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Investment Share',
                      style: TextStyle(
                        fontSize: 18,
                        color: kTextColor,
                        fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Investment Total IDR 2,447,634',
                      style: TextStyle(
                        fontSize: 16,
                        color: kTextColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ]
              ),
            ),
            SizedBox(height: 400, child: chart),
            Padding(
              padding: EdgeInsets.only(left: SizeConfig.blockHorizontal * 3, bottom: SizeConfig.blockVertical * 2),
              child: ListDot(
                percent: '90,06 %',
                title: 'Super Money Market ',
                value: 'IDR 100',
                color: Color(0xFFC0FF8C),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: SizeConfig.blockHorizontal * 3, bottom: SizeConfig.blockVertical * 2),
              child: ListDot(
                percent: '4,58 %',
                title: 'Fix Best One ',
                value: 'IDR 100',
                color: Color(0xFFFFF78C),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: SizeConfig.blockHorizontal * 3, bottom: SizeConfig.blockVertical * 2),
              child: ListDot(
                percent: '5,36 %',
                title: 'Smart Equity ',
                value: 'IDR 100',
                color: Color(0xFFFFD08C),
              ),
            ),
          ],
        )
      ),
    );
  }
}

class AviAtm{
  final String status;
  final int value;
  final charts.Color color;

  AviAtm(this.status, this.value, Color color)
      :this.color=charts.Color(r: color.red,g: color.green,b: color.blue,a: color.alpha);
}
