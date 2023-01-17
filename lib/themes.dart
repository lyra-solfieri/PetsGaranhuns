import 'package:flutter/material.dart';

import 'constants.dart';

final ThemeData lightTheme = ThemeData(
  backgroundColor: lightBackgroundColor,
  scaffoldBackgroundColor: lightBackgroundColor,
  typography: Typography(
    englishLike: Typography.whiteMountainView,
    dense: Typography.dense2018,
    tall: Typography.tall2018,
  ),
  textTheme: TextTheme(
    headline1: TextStyle(
      fontFamily: 'RobotoMedium',
      fontSize: 34.0,
      color: Colors.black.withOpacity(0.75),
    ),
    headline2: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 24.0,
      color: Colors.black.withOpacity(0.65),
    ),
    subtitle1: TextStyle(
      fontFamily: 'RobotoMedium',
      fontSize: 20.0,
      color: Colors.black.withOpacity(0.65),
    ),
    bodyText2: TextStyle(
      fontFamily: 'RobotoMedium',
      fontSize: 14.0,
      color: Colors.black.withOpacity(0.65),
    ),
    bodyText1: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 14.0,
      color: Colors.black.withOpacity(0.65),
    ),
  ),
);
