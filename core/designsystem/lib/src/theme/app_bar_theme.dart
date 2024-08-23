import 'package:flutter/material.dart';

AppBarTheme get lightAppBarTheme => _appBarTheme();

AppBarTheme get darkAppBarTheme => _appBarTheme();

AppBarTheme _appBarTheme() => const AppBarTheme(
      centerTitle: true,
    );
