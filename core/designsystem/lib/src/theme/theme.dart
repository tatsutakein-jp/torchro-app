import 'package:core_designsystem/src/theme/app_bar_theme.dart';
import 'package:core_designsystem/src/theme/color_schemes.g.dart';
import 'package:core_designsystem/src/theme/navigation_bar_theme.dart';
import 'package:flutter/material.dart';

/// Create a light theme.
ThemeData lightTheme(ColorScheme? colorScheme) => _createTheme(
      colorScheme: colorScheme ?? lightColorScheme,
      appBarTheme: lightAppBarTheme,
      navigationBarTheme: lightNavigationBarTheme,
    );

/// Create a dark theme.
ThemeData darkTheme(ColorScheme? colorScheme) => _createTheme(
      colorScheme: colorScheme ?? darkColorScheme,
      appBarTheme: darkAppBarTheme,
      navigationBarTheme: darkNavigationBarTheme,
    );

ThemeData _createTheme({
  required ColorScheme colorScheme,
  required AppBarTheme appBarTheme,
  required NavigationBarThemeData navigationBarTheme,
}) =>
    ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      appBarTheme: appBarTheme,
      navigationBarTheme: navigationBarTheme,
    );
