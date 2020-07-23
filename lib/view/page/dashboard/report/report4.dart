import 'package:flutter/material.dart';
import 'package:flutterxdana/constants.dart';
import 'package:flutterxdana/view/widget/design/layout.dart';
import 'package:flutterxdana/view/widget/widgets.dart';

class Report4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Report1"), backgroundColor: kPrimaryColor,),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(10.0),
                child: CardReport(
                  bankName: "May Bank Syariah",
                  amount: "tes",
                  nauUnit: "tes",
                  transaction: "tes",
                  unit:  "tes",
                  custody: "tes",
                  loss: "tes",
                )
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          SummaryM.exit(context);
        },
        tooltip: 'Summary',
        child: Icon(Icons.assignment),
      ),
    );
  }
}

class SummaryM{
  static exit(context) => showDialog(
      context: context,
      builder: (context) => SummaryMutual()
  );
}

class SummaryMutual extends StatefulWidget {
  @override
  _SummaryMutualState createState() => _SummaryMutualState();
}

class _SummaryMutualState extends State<SummaryMutual> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16)
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildChild(context),
    );
  }

  _buildChild(BuildContext context) => Container(
    height: SizeConfig.blockVertical * 30,
    decoration: BoxDecoration(
        color: kBackgroundColor,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(20))
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: Padding(padding: const EdgeInsets.all(20.0),
            child: Text("Summary", style: TextStyle(color: kBackgroundColor), textAlign: TextAlign.center,),
          ),
          width: double.infinity,
          decoration: BoxDecoration(
              color: kPrimaryColor,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(left: SizeConfig.blockHorizontal * 5, bottom: SizeConfig.blockVertical * 1, top: SizeConfig.blockVertical * 1),
                child: Row(
                  children: <Widget>[
                    Text("Nav Date : ",
                      style: TextStyle(
                        fontSize: kSizeFont,
                        color: kTextColor,

                      ),
                    ),
                    Text("22 Jun 2007",
                      style: TextStyle(
                        fontSize: kSizeFont,
                        color: kTextColor,
                      ),
                    ),
                  ],
                )
            ),
            Padding(
                padding: EdgeInsets.only(left: SizeConfig.blockHorizontal * 5, bottom: SizeConfig.blockVertical * 1),
                child: Row(
                  children: <Widget>[
                    Text("Transaction Amount: ",
                      style: TextStyle(
                        fontSize: kSizeFont,
                        color: kTextColor,

                      ),
                    ),
                    Text("1,100,000",
                      style: TextStyle(
                        fontSize: kSizeFont,
                        color: kTextColor,
                      ),
                    ),
                  ],
                )
            ),
            Padding(
                padding: EdgeInsets.only(left: SizeConfig.blockHorizontal * 5, bottom: SizeConfig.blockVertical * 1),
                child: Row(
                  children: <Widget>[
                    Text("Amount : ",
                      style: TextStyle(
                        fontSize: kSizeFont,
                        color: kTextColor,

                      ),
                    ),
                    Text("1,121,725,2424",
                      style: TextStyle(
                        fontSize: kSizeFont,
                        color: kTextColor,
                      ),
                    ),
                  ],
                )
            ),
            Padding(
                padding: EdgeInsets.only(left: SizeConfig.blockHorizontal * 5, bottom: SizeConfig.blockVertical * 1),
                child: Row(
                  children: <Widget>[
                    Text("Gaint : ",
                      style: TextStyle(
                        fontSize: kSizeFont,
                        color: kTextColor,

                      ),
                    ),
                    Text("21,275,3434",
                      style: TextStyle(
                        fontSize: kSizeFont,
                        color: kTextColor,
                      ),
                    ),
                  ],
                )
            ),
          ],
        ),
      ],
    ),
  );
}
