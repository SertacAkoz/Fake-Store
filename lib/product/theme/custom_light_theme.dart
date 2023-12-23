import 'package:flutter/material.dart';

import 'custom_color.scheme.dart';
import 'custom_theme.dart';

/// Custom light theme for project design
class CustomLightTheme implements CustomTheme {
  @override
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        colorScheme: CustomColorScheme.lightColorScheme,
        floatingActionButtonTheme: floatingActionButtonThemeData,
        // textTheme: const TextTheme().copyWith(titleSmall: const TextStyle()).apply(
        //       bodyColor: CustomColorScheme.lightColorScheme.onPrimary,
        //       displayColor: CustomColorScheme.lightColorScheme.onPrimary,
        //     ),
        textTheme: const TextTheme().copyWith(
          titleSmall: TextStyle(color: CustomColorScheme.lightColorScheme.primary),
          headlineLarge: TextStyle(color: CustomColorScheme.lightColorScheme.onPrimary),
        ),
      );

  @override
  FloatingActionButtonThemeData get floatingActionButtonThemeData => const FloatingActionButtonThemeData();

  @override
  ElevatedButtonThemeData get elevatedButtonThemeData => const ElevatedButtonThemeData();

  // TextTheme get customTextTheme => themeData.textTheme.apply(
  //       bodyColor: Colors.pink,
  //       displayColor: Colors.pink,
  //     );
}
