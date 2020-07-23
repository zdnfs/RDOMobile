import 'package:flutter/cupertino.dart';
import 'package:flutterxdana/view/page/dashboard/10language.dart';
import 'package:flutterxdana/view/page/dashboard/3changepass.dart';
import 'package:flutterxdana/view/page/dashboard/4newsub.dart';
import 'package:flutterxdana/view/page/dashboard/5topup.dart';
import 'package:flutterxdana/view/page/dashboard/6redempition.dart';
import 'package:flutterxdana/view/page/dashboard/7switching.dart';
import 'package:flutterxdana/view/page/dashboard/8newperformance.dart';
import 'package:flutterxdana/view/page/dashboard/9reports.dart';
import 'package:flutterxdana/view/page/dashboard/dashboard.dart';
import 'package:flutterxdana/view/page/dashboard/2investpro.dart';
import 'package:flutterxdana/view/page/dashboard/1profile.dart';

class Routes{
  static const String dashboard = Dashboard.routeName;
  static const String investPro = InvestPro.routeName;
  static const String profile = Profile.routeName;
  static const String changePass = ChangePass.routeName;
  static const String newSub = NewSub.routeName;
  static const String topUp = TopUp.routeName;
  static const String redempition = Redempition.routeName;
  static const String switching = Switching.routeName;
  static const String newPerform = NewPerform.routeName;
  static const String reports = Reports.routeName;
  static const String language = Language.routeName;

  static getRoutes(BuildContext context){
    return {
      dashboard: (context) => Dashboard(),

      investPro: (context) => InvestPro(),
      profile: (context) => Profile(),
      changePass: (context) => ChangePass(),
      newSub: (context) => NewSub(),
      topUp: (context) => TopUp(),
      redempition: (context) => Redempition(),
      switching: (context) => Switching(),
      reports: (context) => Reports(),
      language: (context) => Language(),
    };
  }
}
