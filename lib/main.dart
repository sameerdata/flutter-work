import 'package:flutter/material.dart';
import 'package:mynotes/Pages/Home_page.dart';
import 'package:mynotes/Pages/Login_Page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //    home: HomePage(),
      themeMode: ThemeMode.light, ////optioanl
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.brown),
      initialRoute: "/",
      routes: {
        "/": (context) => Loginpage(),
        "/Home": (context) => HomePage(),
        "/login": (context) => Loginpage()
      },
    );
  }
}
