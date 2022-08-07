import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final days = 3;
  String name = "Muhammad sameer";
  var patanhi = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("menu"),
      ),
      body: Center(
        child: Container(
          child: Text(
            "welcome to $days day of flutter my name is $name ",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
