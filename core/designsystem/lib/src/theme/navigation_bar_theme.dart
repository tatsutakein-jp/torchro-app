import 'package:flutter/material.dart';

NavigationBarThemeData get lightNavigationBarTheme => _navigationBarTheme();

NavigationBarThemeData get darkNavigationBarTheme => _navigationBarTheme();

NavigationBarThemeData _navigationBarTheme() => const NavigationBarThemeData(
      labelTextStyle: WidgetStatePropertyAll<TextStyle>(
        TextStyle(
          fontSize: 12,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
