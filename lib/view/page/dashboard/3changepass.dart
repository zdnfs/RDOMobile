import 'package:flutter/material.dart';
import 'package:flutterxdana/constants.dart';
import 'package:flutterxdana/view/widget/design/layout.dart';
import 'package:flutterxdana/view/widget/labalbox.dart';
import 'package:flutterxdana/view/widget/sidebar.dart';
import 'package:flutterxdana/view/widget/sidebar3.dart';
import 'package:flutterxdana/view/widget/widgets.dart';


class ChangePass extends StatefulWidget {
  static const String routeName = "flutterxdana/view/page/dashboard/3changepass.dart";
  @override
  _ChangePassState createState() => _ChangePassState();
}

class _ChangePassState extends State<ChangePass> {

  bool _isSelected = false;
  show(){
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  String username, password;
  final _key = new GlobalKey<FormState>();

  bool _secureText = true;
  showHide(){
    setState(() {
      _secureText = !_secureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Sidebar3(),
        appBar: AppBar(title: Text("ChangePass")),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: <Widget>[
              TextFormField(
                obscureText: _secureText,
                onSaved: (e)=>password = e,
                decoration: InputDecoration(
                  labelText: "Current Password",
                  suffixIcon: IconButton(
                    onPressed: showHide,
                    icon: Icon(_secureText ? Icons.visibility_off : Icons.visibility),
                  ),
                ),
              ),
              TextFormField(
                obscureText: _secureText,
                onSaved: (e)=>password = e,
                decoration: InputDecoration(
                  labelText: "New Password",
                  suffixIcon: IconButton(
                    onPressed: showHide,
                    icon: Icon(_secureText ? Icons.visibility_off : Icons.visibility),
                  ),
                ),
              ),
              LabeledCheckbox(
                label: 'Show Password',
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                value: _isSelected,
                onChanged: (bool newValue) {
                  setState(() {
                    _isSelected = newValue;
                  });
                },
              ),
              Padding(
                padding: EdgeInsets.only(left: SizeConfig.blockHorizontal * 3, bottom: SizeConfig.blockVertical * 2, top: SizeConfig.blockVertical * 2),
                child: Container(
                  height: SizeConfig.blockHorizontal * 15,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Button(
                        title: 'Save',
                        color: kAccButton,
                        route: (){},
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Your Password Must :',
                          style: TextStyle(
                            fontSize: 18,
                            color: kTextColor,
                          ),
                        ),
                        Text(
                          '- At Least 5 Character Leght',
                          style: TextStyle(
                            fontSize: 18,
                            color: kTextColor,
                          ),
                        ),
                        Text(
                          '- Maximum 50 Character Leght',
                          style: TextStyle(
                            fontSize: 18,
                            color: kTextColor,
                          ),
                        ),
                        Text(
                          '- At Least Contains a number',
                          style: TextStyle(
                            fontSize: 18,
                            color: kTextColor,
                          ),
                        ),
                        Text(
                          '- At Least Contains a Lower Case Letter',
                          style: TextStyle(
                            fontSize: 18,
                            color: kTextColor,
                          ),
                        ),
                        Text(
                          '- At Least Contains a Upper Case Letter',
                          style: TextStyle(
                            fontSize: 18,
                            color: kTextColor,
                          ),
                        ),
                      ]
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}


