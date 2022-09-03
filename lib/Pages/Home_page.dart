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
          child: (catalogmodel.items != null && catalogmodel.items.isNotEmpty)
              ? GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15),
                  itemBuilder: (context, index) {
                    final item = catalogmodel.items[index];
                    return Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: GridTile(
                        header: Container(
                          child: Text(
                            item.name,
                            style: TextStyle(color: Colors.white),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                          ),
                          padding: EdgeInsets.all(12),
                        ),
                        child: Image.network(item.image),
                        footer: Container(
                          child: Text(
                            item.price.toString(),
                            style: TextStyle(color: Colors.white),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black,
                          ),
                          padding: EdgeInsets.all(12),
                        ),
                      ),
                    );
                  },
                  itemCount: catalogmodel.items.length,
                )
              : Center(
                  child: CircularProgressIndicator(),
                )),
      drawer: mydrawer(),
    );
  }
}
