import 'package:contacts/theme/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: CustomColors.softPeach,
      onPrimary: Colors.black,
    ),
    textTheme: GoogleFonts.heeboTextTheme()
  );
}
