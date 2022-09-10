import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class mytheme {
  static ThemeData lighttheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.lato().fontFamily,
      cardColor: Colors.white,
      canvasColor: creamcolor,
      buttonColor: mytheme.darkbluishcolor,
      appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: Theme.of(context).appBarTheme.textTheme));

  static ThemeData darktheme(BuildContext context) => ThemeData(
      fontFamily: GoogleFonts.lato().fontFamily,
      cardColor: Colors.black,
      canvasColor: darkcreamcolor,
      buttonColor: mytheme.lightluishcolor,
      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ));
//colors
  static Color creamcolor = Color.fromARGB(255, 255, 255, 255);

  static Color darkcreamcolor = Vx.gray900;
  static Color darkbluishcolor = Color.fromARGB(255, 64, 59, 88);
  static Color lightluishcolor = Vx.indigo500;
}
