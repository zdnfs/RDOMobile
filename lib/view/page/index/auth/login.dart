import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutterxdana/view/page/dashboard/2investpro.dart';
import 'package:flutterxdana/view/page/index/auth/register/stepper.dart';
import 'package:flutterxdana/view/widget/widgets.dart';
import 'package:http/http.dart' as http;
import '../../../../constants.dart';

class Loginn extends StatefulWidget {

  @override
  _LoginnState createState() => _LoginnState();
}

enum LoginStatus{
  notSignIn,
  signIn
}

class _LoginnState extends State<Loginn> {

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
    final respons = await http.post("http://192.168.1.79/authflutter/api/login.php", body: {
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
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: <Widget>[
            SizedBox(height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image(image: AssetImage('assets/img/inklusikeuangan.jpg'), height: 70,),
                  Image(image: AssetImage('assets/img/OJKlogo.png'), height: 70,)
                ],
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(image: AssetImage('assets/img/xdana_logo.png'), height: 100,),
                  SizedBox(width: 10.0,),
                  Text("Investasi Untuk Semua", style: TextStyle(color: kPrimaryColor, fontSize: 15.0, fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            SizedBox(height: 16.0,),
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
            SizedBox(height: 15.0,),
            Container(
              width: 400,
              child: new GestureDetector(
                onTap: () {
                  createAlertDialog(context).then((onValue){
                    SnackBar mySnackbar = SnackBar(content: Text("Password has Change"));
                    Scaffold.of(context).showSnackBar(mySnackbar);
                  });
                },
                child: new Text(
                  "Forgot Password?",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: kPrimaryColor,
                  ),// has impact
                ),
              ),
            ),
            SizedBox(height: 15.0,),
            Container(
              width: 400,
              child: new GestureDetector(
                onTap: () {Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Register(),
                  ),
                );},
                child: new Text(
                  "Don't have an Account? Register Here",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: kPrimaryColor,
                  ),// has impact
                ),
              ),
            ),

            SizedBox(height: 40.0,),
            Center(
                child: Container(
                  width: 300.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(8.0)
                  ),
                  child: Material(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(8),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => InvestPro(),
                            ),
                          );
                        },
                        child: Center(
                          child: new Text('Login',
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
            SizedBox(height: 40.0,),
            Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("English", style: TextStyle(
                      fontSize: 20.0,
                      color: kPrimaryColor,
                    ),),
                    SizedBox(width: 30.0,),
                    Text("Indonesia", style: TextStyle(
                      fontSize: 20.0,
                      color: kPrimaryColor,
                    ),),
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}
