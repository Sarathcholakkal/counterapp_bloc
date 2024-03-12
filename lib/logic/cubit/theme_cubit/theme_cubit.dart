// import 'package:bloc/bloc.dart';

// import 'package:flutter/material.dart';

// import '../../../core/theme/app_theme.dart';

// // import 'package:meta/meta.dart';

// part 'theme_state.dart';

// class ThemeCubit extends Cubit<ThemeState> {
//   ThemeCubit() : super(ThemeState(themeMode: ThemeMode.light)) {
//     // DEAULT VALUE OF APP IS LIGHT WHILE IT OPENS
//     updateAppTheme();
//   }

//   void updateAppTheme() {
//     final Brightness currentBrightness = AppTheme.currentSystemBrightness;
//     currentBrightness == Brightness.light
//         ? _setTheme(ThemeMode.light)
//         : _setTheme(ThemeMode.dark);
//   }

//   void _setTheme(ThemeMode themeMode) {
//     // THIS FUNCTION IS SET AS PRIVATE
//     AppTheme.setStatusBarAndNavigationBarColors(
//         themeMode); // SETS THEME OF OVERLAYS ACCORDING TO THE VALUE OF STSTEM THEME
//     emit(ThemeState(themeMode: themeMode));
//   }
// }
