import 'package:flutter/material.dart';
import 'package:remote/constants/colors.dart';
import 'package:remote/constants/common_textstyles.dart';


class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    splashColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      color: white,
      iconTheme: IconThemeData(
        color: iconThemeColor,
      ),
      titleTextStyle: t18n,
    ),
    textTheme: const TextTheme(
        displayLarge: t48w900cW,
        displayMedium: t24b,
        displaySmall: t14b,
        headlineMedium: t16n,
        labelLarge: t22n,
        headlineSmall: t20n,
        titleLarge: t22n,
        titleMedium: t20n,
        titleSmall: t18n,
        bodyLarge: t20n,
        bodyMedium: t20n),
    colorScheme: const ColorScheme.light(
      primary: appBarColor,
      onPrimary: appBarColor,
      background: appBarColor,
    ).copyWith(background: appBarColor),
  );
}
