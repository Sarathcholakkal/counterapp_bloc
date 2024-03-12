import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

class AppTheme {
  static Color lightBackgroundColor = const Color(0xfff2f2f2);
  static Color lightPrimaryColor = const Color(0xfff2f2f2);
  static Color lightSecondaryColor = Colors.blueGrey.shade200;
  static Color lightParticlesColor = const Color(0x44948282);

  static Color darkBackgroundColor = const Color(0xFF1A2127);
  static Color darkPrimaryColor = const Color(0xFF1A2127);
  static Color darkSecondaryColor = Colors.blueGrey.shade600;
  static Color darkParticlesColor = const Color(0x441C2A3D);

  static final lightColorScheme = ColorScheme.fromSeed(
      brightness: Brightness.light,
      seedColor: lightPrimaryColor,
      background: lightBackgroundColor,
      secondary: lightSecondaryColor);

  static final darkColorScheme = ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: darkPrimaryColor,
      background: darkBackgroundColor,
      secondary: darkSecondaryColor);

  AppTheme._();

  static final lightTheme = ThemeData(
    colorScheme: lightColorScheme,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static final darkTheme = ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      colorScheme: darkColorScheme);

  //==========DEFINING OVERLAY WIDGETS COLORS USING A FUNTIIONS AND IT IS INDIPENDENT FUNCTIONS=========================

  static setStatusBarAndNavigationBarColors(ThemeMode themeMode) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness:
            themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
        systemNavigationBarIconBrightness:
            themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
        systemNavigationBarColor: themeMode == ThemeMode.light
            ? lightBackgroundColor
            : darkBackgroundColor,
        systemNavigationBarDividerColor: Colors.transparent,
      ),
    );
  }

  //==============ACCESSING THEME OF SYSTEM WITH GETTER=============
  static Brightness get currentSystemBrightness =>
      PlatformDispatcher.instance.platformBrightness;
}



// extension ThemeExtras on ThemeData {
//   Color get particlesColor => this.brightness == Brightness.light
//       ? AppTheme.lightParticlesColor
//       : AppTheme.darkParticlesColor;
// }
