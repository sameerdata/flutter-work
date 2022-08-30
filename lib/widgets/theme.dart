import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class mytheme {
  static ThemeData lighttheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: AppBarTheme(
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: Theme.of(context).appBarTheme.textTheme));

  static ThemeData darktheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark, primarySwatch: Colors.brown);
}
