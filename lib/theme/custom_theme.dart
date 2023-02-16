import 'package:contacts/theme/custom_colors.dart';
import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: CustomColors.softPeach,
      onPrimary: Colors.black,
    ),
  );
}
