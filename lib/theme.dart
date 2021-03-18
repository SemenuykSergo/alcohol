import 'package:flutter/material.dart';

ThemeData basicTheme() => ThemeData(
    primaryColor: Color.fromRGBO(141, 141, 141, 1),
    accentColor: Color.fromRGBO(112, 112, 112, 0.4),
    sliderTheme: SliderThemeData.fromPrimaryColors(
      primaryColor: Color.fromRGBO(112, 112, 112, 1),
      primaryColorDark: Color.fromRGBO(112, 112, 112, 1),
      primaryColorLight: Color.fromRGBO(112, 112, 112, 1),
      valueIndicatorTextStyle: TextStyle(),
    ),
    textTheme: TextTheme(
      bodyText1: TextStyle(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
    ),
    appBarTheme: AppBarTheme(
      textTheme: TextTheme(
        headline6: TextStyle(
          color: Colors.black,
          fontSize: 24,
        ),
      ),
    ),
    iconTheme: IconThemeData(
      color: Colors.amber,
      size: 18.0,
    ));
