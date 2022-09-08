import 'package:flutter/material.dart';
import 'package:mynotes/Pages/Home_page.dart';
import 'package:mynotes/Pages/Login_Page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mynotes/Pages/utils/routes.dart';
import 'package:mynotes/widgets/theme.dart';

import 'Pages/cart_page.dart';

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
      theme: mytheme.lighttheme(context),
      darkTheme: mytheme.darktheme(context),

      initialRoute: MyRoutes.Homeroutes,
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const Loginpage(),
        MyRoutes.Homeroutes: (context) => HomePage(),
        MyRoutes.LoginRoute: (context) => const Loginpage(),
        MyRoutes.cartroute: (context) => const cartpage()
      },
    );
  }
}
