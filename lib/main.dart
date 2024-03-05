import 'package:flutter/material.dart';
import 'package:message_app/HomeScreen.dart';
import 'package:message_app/call_login_screen.dart';
import 'package:message_app/calling_Screen.dart';
import 'package:message_app/constants.dart';
import 'package:message_app/MessageLoginScreen.dart';
import 'package:message_app/MessageScreen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:zego_zimkit/zego_zimkit.dart';

void main() {
  ZIMKit().init(appID: constants.appid1, appSign: constants.appsign1);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const HomeScreen(),
    onGenerateRoute: (settings) {
      switch (settings.name) {
        case "mscreen":
          return PageTransition(
              child: const MScreen(), type: PageTransitionType.fade);
        case "mlscreen":
          return PageTransition(
              child: const MLScreen(), type: PageTransitionType.fade);
        case "clscreen":
          return PageTransition(
              child: const CLScreen(), type: PageTransitionType.fade);
        case "cscreen":
          return PageTransition(
              child: const CHScreen(), type: PageTransitionType.fade);
      }
      return null;
    },
  ));
}
