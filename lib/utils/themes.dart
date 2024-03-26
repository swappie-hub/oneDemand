// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:ondemand/utils/colors.dart';

class AppThemes {
  AppThemes._();

  static String font1 = "Arial";
  static String font2 = "Arial";

  //main color
  static const Color _lightPrimaryColor = kDodgerBlue;

  //Background Colors
  static const Color _lightBackgroundColor = lightBackgroundColor;
  static const Color _lightBackgroundAppBarColor = _lightPrimaryColor;
  static const Color _lightBackgroundSecondaryColor = kWhite;
  static const Color _lightBackgroundAlertColor = kBlackPearl;
  static const Color _lightBackgroundActionTextColor = kWhite;
  static const Color _lightBackgroundErrorColor = kBrinkPink;
  static const Color _lightBackgroundSuccessColor = kJuneBud;

  //Text Colors
  static const Color _lightTextColor = kBlack;
  static const Color _lightAlertTextColor = kBlack;
  static const Color _lightTextSecondaryColor = kBlack;

  //Border Color
  static const Color _lightBorderColor = kNevada;

  //Icon Color
  static const Color _lightIconColor = kNevada;

  //form input colors
  static const Color _lightInputFillColor = _lightBackgroundSecondaryColor;
  static const Color _lightBorderActiveColor = _darkBackgroundColor;
  // static const Color _darkBorderActiveColor = _lightBackgroundColor;

  static const Color _lightBorderErrorColor = kBrinkPink;

  //constants color range for dark theme
  static const Color _darkPrimaryColor = kDodgerBlue;

  //Background Colors
  static const Color _darkBackgroundColor = darkBackgroundColor;
  static const Color _darkBackgroundAppBarColor = _darkPrimaryColor;
  static const Color _darkBackgroundSecondaryColor =
      Color.fromRGBO(0, 0, 0, .6);
  static const Color _darkBackgroundAlertColor = kBlackPearl;
  static const Color _darkBackgroundActionTextColor = kWhite;

  static const Color _darkBackgroundErrorColor =
      Color.fromRGBO(255, 97, 136, 1);
  static const Color _darkBackgroundSuccessColor =
      Color.fromRGBO(186, 215, 97, 1);

  //Text Colors
  static const Color _darkTextColor = kWhite;
  static const Color _darkAlertTextColor = kBlack;
  static const Color _darkTextSecondaryColor = kBlack;

  //Border Color
  static const Color _darkBorderColor = kNevada;

  //Icon Color
  static const Color _darkIconColor = kNevada;

  static const Color _darkInputFillColor = _darkBackgroundSecondaryColor;
  static const Color _darkBorderActiveColor = _lightBackgroundColor;
  static const Color _darkBorderErrorColor = kBrinkPink;

  //text theme for light theme
  static const TextTheme _lightTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontSize: 20.0,
      color: _lightTextColor,
      fontFamily: "Arial",
    ),
    bodyLarge: TextStyle(
      fontSize: 16.0,
      color: _lightTextColor,
      fontFamily: "Arial",
    ),
    bodyMedium: TextStyle(fontSize: 14.0, color: kGrey, fontFamily: "Arial"),
    displaySmall: TextStyle(
      fontSize: 16,
      color: _darkTextColor,
      fontFamily: "Arial",
    ),
    labelLarge: TextStyle(
      fontSize: 15.0,
      color: _lightTextColor,
      fontWeight: FontWeight.w600,
      fontFamily: "Arial",
    ),
    titleLarge: TextStyle(
      fontSize: 16.0,
      color: _lightTextColor,
      fontFamily: "Arial",
    ),
    titleMedium: TextStyle(
      fontSize: 16.0,
      color: _lightTextColor,
      fontFamily: "Arial",
    ),
    bodySmall: TextStyle(
      fontSize: 12.0,
      color: _lightBackgroundAppBarColor,
      fontFamily: "Arial",
    ),
  );

  //the light theme
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    fontFamily: "Arial",
    scaffoldBackgroundColor: _lightBackgroundColor,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: _lightPrimaryColor,
    ),
    appBarTheme: AppBarTheme(
      color: _lightBackgroundAppBarColor,
      iconTheme: const IconThemeData(color: _lightTextColor),
      toolbarTextStyle: _lightTextTheme.bodyMedium,
      titleTextStyle: _lightTextTheme.titleLarge,
    ),
    colorScheme: const ColorScheme.light(
      primary: kBlack,

      // secondary: _lightSecondaryColor,
    ),
    snackBarTheme: const SnackBarThemeData(
      backgroundColor: _lightBackgroundAlertColor,
      actionTextColor: _lightBackgroundActionTextColor,
    ),
    iconTheme: const IconThemeData(
      color: _lightIconColor,
    ),
    popupMenuTheme:
        const PopupMenuThemeData(color: _lightBackgroundAppBarColor),
    textTheme: _lightTextTheme,
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      buttonColor: _lightPrimaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
    unselectedWidgetColor: _lightPrimaryColor,
    inputDecorationTheme: const InputDecorationTheme(
      //prefixStyle: TextStyle(color: _lightIconColor),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _lightBorderActiveColor),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _lightBorderActiveColor),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _lightBorderErrorColor),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _lightBorderErrorColor),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      fillColor: _lightBackgroundSecondaryColor,
      //focusColor: _lightBorderActiveColor,
    ),
    bottomAppBarTheme:
        const BottomAppBarTheme(color: bottomnavLightbackgroundColor),
  );

  static const TextTheme _darkTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontSize: 20.0,
      color: _darkTextColor,
      fontFamily: "Arial",
    ),
    bodyLarge: TextStyle(
      fontSize: 16.0,
      color: _darkTextColor,
      fontFamily: "Arial",
    ),
    bodyMedium: TextStyle(fontSize: 14.0, color: kGrey, fontFamily: "Arial"),
    displaySmall: TextStyle(
      fontSize: 16,
      color: _lightTextColor,
      fontFamily: "Arial",
    ),
    labelLarge: TextStyle(
      fontSize: 15.0,
      color: _darkTextColor,
      fontWeight: FontWeight.w600,
      fontFamily: "Arial",
    ),
    titleLarge: TextStyle(
      fontSize: 16.0,
      color: _darkTextColor,
      fontFamily: "Arial",
    ),
    titleMedium: TextStyle(
      fontSize: 16.0,
      color: _darkTextColor,
      fontFamily: "Arial",
    ),
    bodySmall: TextStyle(
      fontSize: 12.0,
      color: _darkBackgroundAppBarColor,
      fontFamily: "Arial",
    ),
  );

  //the dark theme
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    cardColor: kWhite,
    fontFamily: font1,
    scaffoldBackgroundColor: _darkBackgroundColor,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: _darkPrimaryColor,
    ),
    appBarTheme: AppBarTheme(
      color: _darkBackgroundAppBarColor,
      iconTheme: const IconThemeData(color: _darkTextColor),
      toolbarTextStyle: _darkTextTheme.bodyMedium,
      titleTextStyle: _darkTextTheme.titleLarge,
    ),
    snackBarTheme: const SnackBarThemeData(
      contentTextStyle: TextStyle(color: kWhite),
      backgroundColor: _darkBackgroundAlertColor,
      actionTextColor: _darkBackgroundActionTextColor,
    ),
    iconTheme: const IconThemeData(
      color: _darkIconColor, //_darkIconColor,
    ),
    popupMenuTheme: const PopupMenuThemeData(color: _darkBackgroundAppBarColor),
    textTheme: _darkTextTheme,
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      buttonColor: _darkPrimaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
    unselectedWidgetColor: _darkPrimaryColor,
    inputDecorationTheme: const InputDecorationTheme(
      prefixStyle: TextStyle(color: _darkIconColor, fontFamily: "Arial"),
      //labelStyle: TextStyle(color: nevada),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _darkBorderActiveColor),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _darkBorderActiveColor),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _darkBorderErrorColor),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _darkBorderErrorColor),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      fillColor: _darkInputFillColor,
      //focusColor: _darkBorderActiveColor,
    ),
    colorScheme: const ColorScheme.dark(
      primary: _darkPrimaryColor,

      // secondary: _darkSecondaryColor,
    ).copyWith(
      secondary: _darkPrimaryColor,
    ),
    bottomAppBarTheme:
        const BottomAppBarTheme(color: bottomnavdarkbackgroundColor),
  );
}
