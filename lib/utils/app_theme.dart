import 'package:app_flutterando_masterclass/utils/constants.dart';
import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    primaryColor: Constants.primaryColor,
    scaffoldBackgroundColor: Constants.backgroundColor,
    fontFamily: "Montserrat",
    appBarTheme: const AppBarTheme(
        color: Constants.backgroundColor,
        shadowColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 100),
    textTheme: const TextTheme(
      headline2: TextStyle(
        fontSize: 19,
        fontWeight: FontWeight.w500,
        color: Constants.lightBlue,
      ),
      headline1: TextStyle(
          fontSize: 25,
          color: Constants.lightBlue,
          fontWeight: FontWeight.bold),
      subtitle1: TextStyle(
        fontSize: 17,
        color: Constants.lightBlue,
      ),
      bodyText1: TextStyle(
        fontSize: 14,
        color: Constants.lightBlue,
      ),
      bodyText2: TextStyle(
        fontSize: 15,
        color: Constants.textColor,
        letterSpacing: .5,
      ),
    ),
  );
}
