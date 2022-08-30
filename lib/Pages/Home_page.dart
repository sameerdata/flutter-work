// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:mynotes/widgets/drawer.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  final days = 30;
  String name = "Muhammad sameer";
  var patanhi = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        title: const Text(
          "menu",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Text(
            "welcome to $days day of flutter my name is $name ",
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      drawer: mydrawer(),
    );
  }
}
