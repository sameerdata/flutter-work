// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names, must_be_immutable

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:mynotes/models/Catelog.dart';
import 'package:mynotes/widgets/drawer.dart';
import 'package:mynotes/widgets/theme.dart';

import '../widgets/Home_widgets/CatelogHeader.dart';
import '../widgets/Home_widgets/cateloglist.dart';
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
    await Future.delayed(Duration(seconds: 2));
    var catelogjson = await rootBundle.loadString("assets/files/catelog.json");
    var decodeData = jsonDecode(catelogjson);
    var productsData = decodeData["products"];
    catalogmodel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
    print(productsData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CatelogHeader(),
            if (catalogmodel.items != null && catalogmodel.items.isNotEmpty)
              cateloglist().py16().expand()
            else
              CircularProgressIndicator().centered().expand(),
          ]),
        ),
      ),
    );
  }
}
