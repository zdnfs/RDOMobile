import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../constants.dart';
import 'design/layout.dart';

class Expansion extends StatelessWidget{
  final String title;
  final Color color;
  final Color color2;


  Expansion({this.title, this.color, this.color2});
  @override
  // ignore: non_constant_identifier_names
  Widget build(BuildContext){
    return Padding(
        padding: EdgeInsets.only(right: SizeConfig.blockHorizontal * 3),
        child: Container(
          padding: EdgeInsets.all(15),
          width: SizeConfig.blockHorizontal * 83,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: Offset(0.0, 3.0),
                    blurRadius: 5.0
                )
              ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(),
                  child: Center(
                    child: new Text(title,
                      style: TextStyle(
                          fontSize: SizeConfig.blockHorizontal * 4,
                          color: kBackgroundColor,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  )
              ),
            ],
          ),
        )
    );
  }
}

Future <String> createAlertDialog (BuildContext context){

  TextEditingController customControler =TextEditingController();

  return showDialog(context: context, builder: (context){
    return AlertDialog(
      title: Text("Forgot Passwort \n enter your username and email"),
      content: TextFormField(
        controller: customControler,
      ),
      actions: <Widget>[
        MaterialButton(
          elevation: 5.0,
          child: Text("Submit"),
          onPressed: (){
            Navigator.of(context).pop(customControler.text.toString());
          },
        )
      ],
    );
  });
}

class TextFieldDefault extends StatelessWidget {
  final icon;
  final String text;
  final Color color;

  TextFieldDefault({this.icon, this.text, this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              suffixIcon: Icon(icon),
              labelText: text,
              hintText: text,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
              fillColor: kPrimaryColor,
            ),
          ),
          SizedBox(height: SizeConfig.blockHorizontal * 1,)
        ],
      ),
    );
  }
}

class ButtonDefault extends StatelessWidget{

  final String title;
  final Color color;
  final Color color2;


  ButtonDefault({this.title, this.color, this.color2});
  @override
  // ignore: non_constant_identifier_names
  Widget build(BuildContext context){
    return Padding(
        padding: EdgeInsets.only(right: SizeConfig.blockHorizontal * 3),
        child: Container(
          padding: EdgeInsets.all(15),
          width: SizeConfig.blockHorizontal * 83,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: Offset(0.0, 3.0),
                    blurRadius: 5.0
                )
              ]
          ),
          child: Padding(
              padding: EdgeInsets.only(),
              child: Center(
                child: new Text(title,
                  style: TextStyle(
                      fontSize: SizeConfig.blockHorizontal * 4,
                      color: kBackgroundColor,
                      fontWeight: FontWeight.bold
                  ),
                ),
              )
          ),
        )
    );
  }
}

class Button extends StatelessWidget {
  final String title;
  final Color color;
  final route;


  Button({this.title, this.color, this.route});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Container(
            width: SizeConfig.blockHorizontal * 83,
            height: SizeConfig.blockVertical * 83,
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(8.0)
            ),
            child: Material(
                color: color,
                borderRadius: BorderRadius.circular(8),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => route,
                      ),
                    );
                  },
                  child: Center(
                    child: new Text(title,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
            ),
          )
      ),
    );
  }
}

class ListIcon extends StatelessWidget{
  final String title;
  final icon;

  ListIcon({this.title, this.icon});
  @override
  // ignore: non_constant_identifier_names
  Widget build(BuildContext){
    return Padding(
        padding: EdgeInsets.only(right: SizeConfig.blockHorizontal * 3),
        child: Container(
          padding: EdgeInsets.all(15),
          width: SizeConfig.blockHorizontal * 92,
          decoration: BoxDecoration(
              color: kListCard,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: Offset(0.0, 3.0),
                    blurRadius: 5.0
                )
              ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(icon, color: kTextColor,),
                  SizedBox(width: 20.0,),
                  Padding(
                      padding: EdgeInsets.only(),
                      child: Center(
                        child: new Text(title,
                          style: TextStyle(
                              fontSize: 18,
                              color: kTextColor,
                          ),
                        ),
                      )
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }
}

class ListDot extends StatelessWidget{

  final String title;
  final String value;
  final String percent;
  final Color color;

  ListDot({this.title, this.value, this.color, this.percent});
  @override
  Widget build(BuildContext context){
    return Padding(
        padding: EdgeInsets.only(right: SizeConfig.blockHorizontal * 3),
        child: Container(
          padding: EdgeInsets.all(15),
          width: SizeConfig.blockHorizontal * 92,
          decoration: BoxDecoration(
              color: kListCard,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: Offset(0.0, 3.0),
                    blurRadius: 5.0
                )
              ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Material (
                    borderRadius: BorderRadius.circular(100.0),
                    color: color,
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                    ),
                  ),
                  SizedBox(width: 20.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(),
                          child: Text(percent,
                            style: TextStyle(
                                fontSize: SizeConfig.blockHorizontal * 4,
                                color: Colors.black45,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(),
                          child: Text(title,
                            style: TextStyle(
                                fontSize: SizeConfig.blockHorizontal * 4,
                                color: Colors.black45,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(),
                      child: Center(
                        child: new Text(value,
                          style: TextStyle(
                              fontSize: SizeConfig.blockHorizontal * 4.5,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold
                          ),),
                      )
                  ),
                ],
              )
            ],
          ),
        )
    );
  }
}

class TIP extends StatelessWidget{

  final String title;
  final String value;
  final String percent;
  final Color color;

  TIP({this.title, this.value, this.color, this.percent});
  @override
  Widget build(BuildContext context){
    return Padding(
        padding: EdgeInsets.only(right: SizeConfig.blockHorizontal * 3),
        child: Container(
          padding: EdgeInsets.all(15),
          width: SizeConfig.blockHorizontal * 92,
          height: SizeConfig.blockVertical * 23,
          decoration: BoxDecoration(
              color: kListCard,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: Offset(0.0, 3.0),
                    blurRadius: 5.0
                )
              ]
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Material (
                    borderRadius: BorderRadius.circular(100.0),
                    color: color,
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                    ),
                  ),
                  SizedBox(width: 20.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(),
                        child: Text(percent,
                          style: TextStyle(
                              fontSize: SizeConfig.blockHorizontal * 4,
                              color: Colors.black45,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      SizedBox(width: 20.0,),
                      Padding(
                        padding: EdgeInsets.only(),
                        child: Text(title,
                          style: TextStyle(
                              fontSize: SizeConfig.blockHorizontal * 4,
                              color: Colors.black45,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(),
                        child: Text(percent,
                          style: TextStyle(
                              fontSize: SizeConfig.blockHorizontal * 4,
                              color: Colors.black45,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      SizedBox(width: 20.0,),
                      Padding(
                        padding: EdgeInsets.only(),
                        child: Text(title,
                          style: TextStyle(
                              fontSize: SizeConfig.blockHorizontal * 4,
                              color: Colors.black45,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              Divider(
                color: Colors.black,
              ),
              Container(
                width: SizeConfig.blockHorizontal * 92,
                child: Text(value,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontSize: SizeConfig.blockHorizontal * 4.5,
                      color: Colors.black54,
                  ),),
              ),
            ],
          ),
        )
    );
  }
}

class FixedNextBackButton extends StatelessWidget {
  final Color color1;
  final Color color2;
  final routeNext;
  final routeBack;

  FixedNextBackButton({this.color1, this.color2, this.routeNext, this.routeBack});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: SizeConfig.blockHorizontal * 45,
              height: SizeConfig.blockVertical * 7,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: kPrimaryColor)
              ),
              child: Material(
                  color: kListCard,
                  borderRadius: BorderRadius.circular(8),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => routeBack,
                        ),
                      );
                    },
                    child: Center(
                      child: new Text("Back",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: kPrimaryColor
                        ),
                      ),
                    ),
                  )
              ),
            ),
            Container(
              width: SizeConfig.blockHorizontal * 45,
              height: SizeConfig.blockVertical * 7,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: kPrimaryColor)
              ),
              child: Material(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(8),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => routeNext,
                        ),
                      );
                    },
                    child: Center(
                      child: new Text("Next",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: kListCard
                        ),
                      ),
                    ),
                  )
              ),
            ),
          ],
        )
    );
  }

}

class Term extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      child: new GestureDetector(
        onTap: () {
          DialogHelper.exit(context);
        },
        child: new Text(
          "Term and Condition",
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 16.0,
            color: kPrimaryColor,
          ),// has impact
        ),
      ),
    );
  }
}

class TermCondition extends StatelessWidget {
  final String header;
  final String content;

  TermCondition({this.header, this.content});

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
    height: 350,
    decoration: BoxDecoration(
      color: kBackgroundColor,
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.all(Radius.circular(20))
    ),
    child: Column(
      children: <Widget>[
        Container(
          child: Padding(padding: const EdgeInsets.all(30.0),
            child: Text(header, style: TextStyle(color: kBackgroundColor), textAlign: TextAlign.center,),
          ),
          width: double.infinity,
          decoration: BoxDecoration(
              color: kPrimaryColor,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(content, style: TextStyle(color: kTextColor)),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: SizeConfig.blockHorizontal * 35,
                height: SizeConfig.blockVertical * 7,
                child: Material(
                    borderRadius: BorderRadius.circular(10),
                    child: FlatButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                      child: Center(
                        child: new Text("Disagree",
                        ),
                      ),
                    )
                ),
              ),
              Container(
                width: SizeConfig.blockHorizontal * 35,
                height: SizeConfig.blockVertical * 7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Material(
                    borderRadius: BorderRadius.circular(10),
                    child: RaisedButton(
                      color: kAccButton,
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                      child: Center(
                        child: new Text("Agree",
                          style: TextStyle(
                              color: kBackgroundColor
                          ),
                        ),
                      ),
                    )
                ),
              ),
            ],
          )
        )
      ],
    ),
  );
}

class DialogHelper{
  static exit(context) => showDialog(
      context: context,
      builder: (context) => TermCondition(
        header: "Term and Condition",
        content: "1. Investment Switching transaction is only applied Mutual \n"
            "2. Investment Switching transaction is only applied Mutua \n"
            "3. Investment Switching transaction is only applied Mutual \n"
            "4. Investment Switching transaction is only applied Mutual \n",
      )
  );
}

class UploadImage extends StatefulWidget {
  @override
  _UploadImageState createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  File imageFile;

  _openGallery(BuildContext context) async{
    var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState((){
      imageFile= picture;
    });
    Navigator.of(context).pop();
  }

  _openCamera(BuildContext context) async{
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState((){
      imageFile= picture;
    });
    Navigator.of(context).pop();
  }

  Future <void> _showChoice(BuildContext context){
    return showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: Text("Make a Choice!"),
        content:  SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            GestureDetector(
              child: Text("Gallery"),
              onTap: (){
                _openGallery(context);
              },
            ),
            Padding(padding: EdgeInsets.all(8.0)),
            GestureDetector(
              child: Text("Camera"),
              onTap: (){
                _openCamera(context);
              },
            ),
            Padding(padding: EdgeInsets.all(9.0))
          ],
        ),
        ),
      );
    });
  }

  Widget _imageView(){
    if (imageFile == null){
      return Text("No Image Selected!");
    } else{
      return Image.file(imageFile, width: 350, height: 350,);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _imageView(),
            RaisedButton(onPressed: (){
              _showChoice(context);
              }, child: Text("Select Image!"),)
          ],
        ),
      ),
    );
  }
}

class CardReport extends StatelessWidget {
  final String bankName;
  final String content;

  final String custody;
  final String transaction;
  final String nauUnit;
  final String amount;
  final String unit;
  final String loss;

  CardReport({
    this.bankName,
    this.content,
    this.amount,
    this.custody,
    this.loss,
    this.nauUnit,
    this.transaction,
    this.unit
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Container(
        height: SizeConfig.blockVertical * 30,
        decoration: BoxDecoration(
            color: kBackgroundColor,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: Offset(0.0, 3.0),
                  blurRadius: 5.0
              )
            ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Padding(padding: const EdgeInsets.all(20.0),
                child: Text(bankName, style: TextStyle(color: kBackgroundColor), textAlign: TextAlign.center,),
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
                        Text("Custody : ",
                          style: TextStyle(
                            fontSize: kSizeFont,
                            color: kTextColor,

                          ),
                        ),
                        Text(custody,
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
                      Text("Transaction : ",
                        style: TextStyle(
                            fontSize: kSizeFont,
                            color: kTextColor,

                        ),
                      ),
                      Text(transaction,
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
                        Text("nauUnit : ",
                          style: TextStyle(
                            fontSize: kSizeFont,
                            color: kTextColor,

                          ),
                        ),
                        Text(nauUnit,
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
                        Text(amount,
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
                        Text("Unit : ",
                          style: TextStyle(
                            fontSize: kSizeFont,
                            color: kTextColor,

                          ),
                        ),
                        Text(unit,
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
                        Text("Loss : ",
                          style: TextStyle(
                            fontSize: kSizeFont,
                            color: kTextColor,

                          ),
                        ),
                        Text(loss,
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
      ),
    );
  }
}

class ProSum extends StatelessWidget {
  final String bankName;
  final String amount;
  final String nav;
  final String unit;

  ProSum({
    this.bankName,
    this.amount,
    this.nav,
    this.unit,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Container(
        height: SizeConfig.blockVertical * 20,
        decoration: BoxDecoration(
            color: kBackgroundColor,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: Offset(0.0, 3.0),
                  blurRadius: 5.0
              )
            ]
        ),
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.all(7),
                    child: Text(bankName,
                      style: TextStyle(
                        fontSize: kSizeFont,
                        color: kTextColor,
                      ),
                    ),
                ),
                Padding(
                  padding: EdgeInsets.all(7),
                  child: Text(amount,
                    style: TextStyle(
                      fontSize: kSizeFont,
                      color: kTextColor,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: SizeConfig.blockHorizontal * 41,
                      height: SizeConfig.blockVertical * 7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: kPrimaryColor
                      ),
                      child: Center(
                        child: Padding(
                            padding:EdgeInsets.all(10),
                            child: Column(
                              children: <Widget>[
                                Text("NAV / Unit",
                                  style: TextStyle(
                                      color: kBackgroundColor
                                  ),
                                ),
                                Text(nav,
                                  style: TextStyle(
                                      color: kBackgroundColor
                                  ),
                                ),
                              ],
                            )
                        ),
                      ),
                    ),
                    Container(
                      width: SizeConfig.blockHorizontal * 41,
                      height: SizeConfig.blockVertical * 7,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: kPrimaryColor
                      ),
                      child: Center(
                        child: Padding(
                            padding:EdgeInsets.all(10),
                            child: Column(
                              children: <Widget>[
                                Text("Unit",
                                  style: TextStyle(
                                      color: kBackgroundColor
                                  ),
                                ),
                                Text(unit,
                                  style: TextStyle(
                                      color: kBackgroundColor
                                  ),
                                ),
                              ],
                            )
                        ),
                      ),
                    ),
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}

class SearchBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(),
      child: Container(
        width: SizeConfig.blockHorizontal * 90,
        height: SizeConfig.blockHorizontal * 18,
        decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: Offset(0.0, 3.0),
                  blurRadius: 5.0
              )
            ]
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: SizeConfig.blockHorizontal * 1),
                child: Center(
                  child: Text("Search Here",
                    style: TextStyle(
                        fontSize: SizeConfig.blockHorizontal * 4,
                        color: kBackgroundColor,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                )
            ),
            Padding(
              padding: EdgeInsets.only(),
              child: Icon(
                Icons.search,
                color: kBackgroundColor,
                size: 30.0,
              ),
            ),
          ],
        ),)
      )
    );
  }
}



class Performance extends StatelessWidget {
  final String title;
  final String navUnit;
  final String day1;
  final String day3;
  final String mount1;
  final String mount3;
  final String year1;

  Performance({this.title, this.navUnit, this.day1, this.day3, this.mount1, this.mount3, this.year1});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.blockHorizontal * 145,
      height: SizeConfig.blockVertical * 17,
      decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: Offset(0.0, 3.0),
                blurRadius: 5.0
            )
          ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(5),
            child: Text(title),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.blockVertical*2, right: SizeConfig.blockHorizontal*5, left: SizeConfig.blockHorizontal*2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Nav Unit"),
                    Text(navUnit)
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.blockVertical*2, right: SizeConfig.blockHorizontal*5,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("1 Day"),
                    Row(
                      children: <Widget>[
                        Icon(Icons.arrow_drop_down, color: Colors.red,),
                        Text(day1)
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.blockVertical*2, right: SizeConfig.blockHorizontal*5,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("3 Day"),
                    Row(
                      children: <Widget>[
                        Icon(Icons.arrow_drop_up, color: Colors.green,),
                        Text(day3)
                      ],
                    ),

                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.blockVertical*2, right: SizeConfig.blockHorizontal*5,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("1 Mount"),
                    Row(
                      children: <Widget>[
                        Icon(Icons.arrow_drop_up, color: Colors.green,),
                        Text(mount1)
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.blockVertical*2, right: SizeConfig.blockHorizontal*5,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("3 Mount"),
                    Row(
                      children: <Widget>[
                        Icon(Icons.arrow_drop_up, color: Colors.green,),
                        Text(mount3)
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.blockVertical*2, right: SizeConfig.blockHorizontal*5,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Year"),
                    Row(
                      children: <Widget>[
                        Icon(Icons.arrow_drop_up, color: Colors.green,),
                        Text(year1)
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}







