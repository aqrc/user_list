import 'package:contacts/theme/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme {
  static ThemeData lightTheme = ThemeData(
    shadowColor: CustomColors.shadow,
    colorScheme: const ColorScheme.light(
      primary: CustomColors.softPeach,
      onPrimary: CustomColors.black,
    ),
    textTheme: GoogleFonts.heeboTextTheme(),
    appBarTheme: const AppBarTheme(
      shadowColor: CustomColors.shadow,
    ),
  );
}
