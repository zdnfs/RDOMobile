import 'package:flutter/material.dart';
import 'package:flutterxdana/view/page/dashboard/10language.dart';
import 'package:flutterxdana/view/page/dashboard/1profile.dart';
import 'package:flutterxdana/view/page/dashboard/2investpro.dart';
import 'package:flutterxdana/view/page/dashboard/3changepass.dart';
import 'package:flutterxdana/view/page/dashboard/4newsub.dart';
import 'package:flutterxdana/view/page/dashboard/5topup.dart';
import 'package:flutterxdana/view/page/dashboard/6redempition.dart';
import 'package:flutterxdana/view/page/dashboard/7switching.dart';
import 'package:flutterxdana/view/page/dashboard/8newperformance.dart';
import 'package:flutterxdana/view/page/dashboard/9reports.dart';
import '../../constants.dart';
import '../../routes.dart';
import 'navbar.dart';

class Sidebar3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: new Text("Hi Jhon", style: TextStyle(color: kTextColor),),
            accountEmail: new Text("kprathap23@gmail.com", style: TextStyle(color: kTextColor),),
            decoration: new BoxDecoration(
                color: Colors.white
            ),
            currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://randomuser.me/api/portraits/men/46.jpg")),
          ),
          new Divider(),
          new ListTile(
              leading: Icon(Icons.account_circle),
              title: new Text("My Profile"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, new MaterialPageRoute(builder: (context) => new Profile()));
              }),
          new ListTile(
              leading: Icon(Icons.assignment),
              title: new Text("Investment Profile"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, new MaterialPageRoute(builder: (context) => new InvestPro()));
              }),
          new ListTile(
              leading: Icon(Icons.lock_open),
              title: new Text("Change Password"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, new MaterialPageRoute(builder: (context) => new ChangePass()));
              }
          ),
          new Divider(),
          new ListTile(
              leading: Icon(Icons.add_shopping_cart),
              title: new Text("New Subscription"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, new MaterialPageRoute(builder: (context) => new NewSub()));
              }),
          new ListTile(
              leading: Icon(Icons.dashboard),
              title: new Text("Top Up"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, new MaterialPageRoute(builder: (context) => new TopUp()));
              }),
          new ListTile(
              leading: Icon(Icons.settings),
              title: new Text("Redempition"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, new MaterialPageRoute(builder: (context) => new Redempition()));
              }),
          new ListTile(
              leading: Icon(Icons.info),
              title: new Text("Switching"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, new MaterialPageRoute(builder: (context) => new Switching()));
              }),

          new Divider(),
          new ListTile(
              leading: Icon(Icons.change_history),
              title: new Text("Nav Performance"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, new MaterialPageRoute(builder: (context) => new NewPerform()));
              }),
          new ListTile(
              leading: Icon(Icons.picture_as_pdf),
              title: new Text("Reports"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, new MaterialPageRoute(builder: (context) => new Reports()));
              }),

          new Divider(),
          new ListTile(
              leading: Icon(Icons.language),
              title: new Text("Language"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, new MaterialPageRoute(builder: (context) => new Language()));
              }),
          new ListTile(
              leading: Icon(Icons.power_settings_new),
              title: new Text("Log Out"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, new MaterialPageRoute(builder: (context) => new BottomNavBar()));
              }),
        ],
      ),
    );
  }
}
