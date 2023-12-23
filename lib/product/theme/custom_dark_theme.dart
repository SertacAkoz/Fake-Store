import 'package:flutter/material.dart';

import 'custom_color.scheme.dart';
import 'custom_theme.dart';

/// Custom light theme for project design
class CustomDarkTheme implements CustomTheme {
  @override
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        colorScheme: CustomColorScheme.darkColorScheme,
        floatingActionButtonTheme: floatingActionButtonThemeData,
      );

  @override
  final FloatingActionButtonThemeData floatingActionButtonThemeData =
      const FloatingActionButtonThemeData();

  @override
  ElevatedButtonThemeData get elevatedButtonThemeData =>
      const ElevatedButtonThemeData();
}
