import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../routes.dart';

class Sidebar extends StatelessWidget {
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
                Navigator.pushReplacementNamed(context, Routes.profile);
              }),
          new ListTile(
              leading: Icon(Icons.assignment),
              title: new Text("Investment Profile"),
              onTap: () {
                Navigator.pushReplacementNamed(context, Routes.investPro);
              }),
          new ListTile(
            leading: Icon(Icons.lock_open),
            title: new Text("Change Password"),
              onTap: () {
                Navigator.pushReplacementNamed(context, Routes.changePass);
              }
          ),
          new Divider(),
          new ListTile(
              leading: Icon(Icons.add_shopping_cart),
              title: new Text("New Subscription"),
              onTap: () {
                Navigator.pushReplacementNamed(context, Routes.newSub);
              }),
          new ListTile(
              leading: Icon(Icons.dashboard),
              title: new Text("Top Up"),
              onTap: () {
                Navigator.pushReplacementNamed(context, Routes.topUp);
              }),
          new ListTile(
              leading: Icon(Icons.settings),
              title: new Text("Redempition"),
              onTap: () {
                Navigator.pushReplacementNamed(context, Routes.redempition);
              }),
          new ListTile(
              leading: Icon(Icons.info),
              title: new Text("Switching"),
              onTap: () {
                Navigator.pushReplacementNamed(context, Routes.switching);
              }),

          new Divider(),
          new ListTile(
              leading: Icon(Icons.power_settings_new),
              title: new Text("Nav Performance"),
              onTap: () {
                Navigator.pushReplacementNamed(context, Routes.newPerform);
              }),
          new ListTile(
              leading: Icon(Icons.power_settings_new),
              title: new Text("Reports"),
              onTap: () {
                Navigator.pushReplacementNamed(context, Routes.reports);
              }),

          new Divider(),
          new ListTile(
              leading: Icon(Icons.power_settings_new),
              title: new Text("Language"),
              onTap: () {
                Navigator.pushReplacementNamed(context, Routes.language);
              }),
          new ListTile(
              leading: Icon(Icons.power_settings_new),
              title: new Text("Log Out"),
              onTap: () {
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}
