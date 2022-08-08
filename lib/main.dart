import 'package:flutter/material.dart';
import 'package:mynotes/Pages/Home_page.dart';
import 'package:mynotes/Pages/Login_Page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mynotes/Pages/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //    home: HomePage(),
      themeMode: ThemeMode.light, ////optioanl
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.brown),
      initialRoute: "/",
      routes: {
        "/": (context) => const Loginpage(),
        MyRoutes.Homeroutes: (context) => HomePage(),
        MyRoutes.LoginRoute: (context) => const Loginpage()
      },
    );
  }
}
