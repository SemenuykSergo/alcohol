import 'package:alcohol_dilution_calculator/theme/const_theme.dart';
import 'package:flutter/material.dart';

ThemeData basicTheme() => ThemeData(
      accentColor: ConstColor.colorBlack,
      sliderTheme: SliderThemeData.fromPrimaryColors(
        primaryColor: ConstColor.colorYellow,
        primaryColorDark: ConstColor.colorYellow,
        primaryColorLight: ConstColor.colorYellow,
        valueIndicatorTextStyle: TextStyle(),
      ),
      textTheme: TextTheme(
        bodyText1: TextStyle(
          color: ConstColor.colorYellow,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        bodyText2: TextStyle(
          color: ConstColor.colorYellow,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: ConstColor.colorBlack,
        textTheme: TextTheme(
          headline6: TextStyle(
            color: ConstColor.colorYellow,
            fontSize: 26,
          ),
        ),
      ),
    );
