// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names, must_be_immutable

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:mynotes/models/Catelog.dart';
import 'package:mynotes/widgets/drawer.dart';
import 'package:mynotes/widgets/theme.dart';

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
              cateloglist().expand()
            else
              Center(
                child: CircularProgressIndicator(),
              ),
          ]),
        ),
      ),
    );
  }
}

class CatelogHeader extends StatelessWidget {
  const CatelogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl5.bold.color(mytheme.darkbluishcolor).make(),
        "Trending products".text.xl2.make(),
      ],
    );
    ;
  }
}

class cateloglist extends StatelessWidget {
  const cateloglist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: catalogmodel.items.length,
        itemBuilder: (context, index) {
          final catalog = catalogmodel.items[index];
          return catelogitem(catalog: catalog);
        });
  }
}

class catelogitem extends StatelessWidget {
  final Item catalog;
  const catelogitem({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        catelogimage(image: catalog.image),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.lg.color(mytheme.darkbluishcolor).bold.make(),
            catalog.desc.text.textStyle(context.captionStyle).make(),
            ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: Vx.mOnly(right: 16),
                children: [
                  "\$${catalog.price}".text.bold.xl.make(),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(mytheme.darkbluishcolor),
                        shape: MaterialStateProperty.all(
                          StadiumBorder(),
                        )),
                    child: "buy".text.make(),
                  ),
                ]),
          ],
        ))
      ],
    )).white.rounded.square(150).make().py16();
  }
}

class catelogimage extends StatelessWidget {
  final String image;
  const catelogimage({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    ).box.rounded.color(mytheme.creamcolor).make().p16().w32(context);
  }
}
