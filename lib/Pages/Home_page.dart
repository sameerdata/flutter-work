// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mynotes/models/Catelog.dart';
import 'package:mynotes/widgets/drawer.dart';
import 'dart:convert';
import '../widgets/item_widgets.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final days = 30;

  String name = "Muhammad sameer";

  var patanhi = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    var catelogjson = await rootBundle.loadString("assets/files/catelog.json");
    var decodeData = jsonDecode(catelogjson);
    var productsData = decodeData["products"];
    print(productsData);
  }

  @override
  Widget build(BuildContext context) {
    final dummylist = List.generate(5, (index) => catalogmodel.Items[0]);
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
      body: Padding(
          padding: const EdgeInsets.all(16.00),
          child: ListView.builder(
            itemCount: dummylist.length,
            itemBuilder: ((context, index) {
              return Itemwidgets(
                item: dummylist[index],
                key: null,
              );
            }),
          )),
      drawer: mydrawer(),
    );
  }
}
