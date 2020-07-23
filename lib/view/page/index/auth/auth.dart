import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutterxdana/view/page/dashboard/dashboard.dart';
import 'package:http/http.dart' as http;

import '../../../../constants.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

enum LoginStatus{
  notSignIn,
  signIn
}

class _LoginState extends State<Login> {
  LoginStatus _loginStatus = LoginStatus.notSignIn;
  //    variable
  String username, password;
  final _key = new GlobalKey<FormState>();

  bool _secureText = true;
//  showhidePass
  showHide(){
    setState(() {
      _secureText = !_secureText;
    });
  }


//  fungsi cek
  check(){
    final form = _key.currentState;
    if (form.validate()){
      form.save();
//      print("$username, $password");
      login();
    }
  }

  login()async{
    final respons = await http.post("http://192.168.1.10/authflutter/api/login.php", body: {
      "username" : username,
      "password" : password
    });
    final data = jsonDecode(respons.body);
    int value = data ['value'];
    String pesan = data ['message'];
    if (value==1){
      setState(() {
        _loginStatus =LoginStatus.signIn;
      });
      print(pesan);
    }else{
      print(pesan);
    }

    print(data);
  }


  @override
  Widget build(BuildContext context) {
    switch(_loginStatus){
      case LoginStatus.notSignIn:
        return Scaffold(
          body: SafeArea(
            child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 60.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image(image: AssetImage('assets/img/inklusikeuangan.jpg'), height: 70,),
                        Image(image: AssetImage('assets/img/OJKlogo.png'), height: 70,)
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 80.0, right: 10.0, top: 0.0, bottom: 0.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image(image: AssetImage('assets/img/xdana_logo.png'), height: 100,),
                        SizedBox(width: 10.0,),
                        Text("Investasi Untuk Semua", style: TextStyle(color: kPrimaryColor, fontSize: 15.0, fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                  TextFormField(
                    validator: (e){
                      if (e.isEmpty){
                        return "masih kosong";
                      }
                    },
                    onSaved: (e)=>username = e,
                    decoration: InputDecoration(
                      labelText: "user name",
                    ),
                  ),
                  SizedBox(height: 16.0,),
                  TextFormField(
                    obscureText: _secureText,
                    onSaved: (e)=>password = e,
                    decoration: InputDecoration(
                      labelText: "password",
                      suffixIcon: IconButton(
                        onPressed: showHide,
                        icon: Icon(_secureText ? Icons.visibility_off : Icons.visibility),
                      ),
                    ),
                  ),
                  SizedBox(height: 8.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text("Forgot Your Password",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: kPrimaryColor,
                        ),
                      ),
                      SizedBox(height: 5.0,),
                      Text("Don't have an Account? Register Here",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: kPrimaryColor,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 16.0,),
                  MaterialButton(
                    onPressed: (){
                      check();
                    },
                    child: Text("login"),
                  )
                ]
            ),
          ),
        );
        break;
      case LoginStatus.signIn:
        return Dashboard();
        break;
    }
  }
}
