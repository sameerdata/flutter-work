import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final days = 2;
  String name = "Muhammad sameer";
  var patanhi = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: Text("wecome to $days day of flutter my name is $name "),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
