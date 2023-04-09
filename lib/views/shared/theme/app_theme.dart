import 'package:flutter/material.dart';
import 'package:imobis/core/helpers/validators/resources.dart';

ThemeData appThemeLight() {
  final colorScheme = ColorScheme.light(
    primary: R.colors.primaryColor,
    secondary: R.colors.secondaryColor,
    tertiary: R.colors.tertiaryColor,
    error: R.colors.redError,
    outline: R.colors.primaryColor,
    background: R.colors.darkWhite,
    surface: R.colors.lightGrey,
  );

  final textTheme = TextTheme(
    titleMedium: TextStyle(
      fontSize: R.fontSize.fs16,
      fontWeight: FontWeight.w500,
      color: R.colors.customLightBlue,
    ),
    bodyMedium: TextStyle(
      fontSize: R.fontSize.fs16,
      fontWeight: FontWeight.w500,
      color: R.colors.darkTypograph,
    ),
    displayMedium: TextStyle(
      fontSize: R.fontSize.fs12,
      fontWeight: FontWeight.w400,
      fontFamily: R.fontFamily.secondaryFont,
      color: R.colors.darkTypograph,
    ),
  );

  final inputTheme = InputDecorationTheme(
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2, color: R.colors.primaryColor),
      borderRadius: const BorderRadius.all(Radius.circular(15)),
    ),
    labelStyle: textTheme.bodyMedium!.copyWith(
      fontSize: R.fontSize.fs16,
      fontWeight: FontWeight.w300,
    ),
    isDense: true,
    contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    fillColor: R.colors.almostLight,
    hoverColor: Colors.transparent,
    filled: true,
    focusedBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      borderSide: BorderSide(
        color: R.colors.primaryColor,
        width: 2,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(18.0),
      borderSide: BorderSide(
        color: R.colors.darkGrey,
      ),
    ),
  );

  final elevatedTheme = ElevatedButtonThemeData();

  final buttonTheme = ButtonThemeData();

  return ThemeData(
    // Colors
    cardColor: R.colors.almostLight,
    primaryColor: R.colors.primaryColor,
    primaryColorDark: R.colors.primaryColorDark,
    primaryColorLight: R.colors.primaryColorLight,
    scaffoldBackgroundColor: R.colors.lightBackground,
    secondaryHeaderColor: R.colors.secondaryColor,
    disabledColor: R.colors.inactiveComponent,
    dividerColor: R.colors.lightGrey,
    canvasColor: Colors.transparent,
    colorScheme: colorScheme,
    backgroundColor: R.colors.lightBackground,

    // Font
    fontFamily: R.fontFamily.primaryFont,

    textTheme: textTheme,
    inputDecorationTheme: inputTheme,
    elevatedButtonTheme: elevatedTheme,
    buttonTheme: buttonTheme,
  );
}

ThemeData appThemeDark() {
  final colorScheme = ColorScheme.light(
    primary: R.colors.primaryColor,
    secondary: R.colors.secondaryColor,
    tertiary: R.colors.tertiaryColor,
    error: R.colors.redError,
    outline: R.colors.primaryColor,
    background: R.colors.lightDark,
    surface: R.colors.lightGrey,
  );

  final textTheme = TextTheme(
    titleMedium: TextStyle(
      fontSize: R.fontSize.fs16,
      fontWeight: FontWeight.w500,
      color: R.colors.customLightBlue,
    ),
    bodyMedium: TextStyle(
      fontSize: R.fontSize.fs16,
      fontWeight: FontWeight.w500,
      color: R.colors.lightTypograph,
    ),
    displayMedium: TextStyle(
      fontSize: R.fontSize.fs12,
      fontWeight: FontWeight.w400,
      fontFamily: R.fontFamily.secondaryFont,
      color: R.colors.lightTypograph,
    ),
  );

  final inputTheme = InputDecorationTheme(
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2, color: R.colors.primaryColor),
      borderRadius: const BorderRadius.all(Radius.circular(15)),
    ),
    labelStyle: textTheme.bodyMedium!.copyWith(
      fontSize: R.fontSize.fs16,
      fontWeight: FontWeight.w300,
    ),
    isDense: true,
    contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    fillColor: R.colors.almostDark,
    hoverColor: Colors.transparent,
    filled: true,
    focusedBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      borderSide: BorderSide(
        color: R.colors.primaryColor,
        width: 2,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(18.0),
      borderSide: BorderSide(
        color: R.colors.darkGrey,
      ),
    ),
  );

  final elevatedTheme = ElevatedButtonThemeData();

  final buttonTheme = ButtonThemeData();

  return ThemeData(
    // Colors
    cardColor: R.colors.almostLight,
    primaryColor: R.colors.primaryColor,
    primaryColorDark: R.colors.primaryColorDark,
    primaryColorLight: R.colors.primaryColorLight,
    scaffoldBackgroundColor: R.colors.darkBackgroundOne,
    secondaryHeaderColor: R.colors.secondaryColor,
    disabledColor: R.colors.inactiveComponent,
    dividerColor: R.colors.lightGrey,
    canvasColor: Colors.transparent,
    colorScheme: colorScheme,
    backgroundColor: R.colors.darkBackgroundOne,

    // Font
    fontFamily: R.fontFamily.primaryFont,

    textTheme: textTheme,
    inputDecorationTheme: inputTheme,
    elevatedButtonTheme: elevatedTheme,
    buttonTheme: buttonTheme,
  );
}
