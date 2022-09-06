import 'package:flutter/material.dart';
import 'package:mynotes/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';
import '';
import '../models/Catelog.dart';

class home_detail_pages extends StatelessWidget {
  final Item catalog;

  const home_detail_pages({required this.catalog})
      : assert(catalog != null),
        super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: mytheme.creamcolor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: Vx.mOnly(right: 16),
            children: [
              "\$${catalog.price}".text.bold.xl4.red800.make(),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(mytheme.darkbluishcolor),
                    shape: MaterialStateProperty.all(
                      StadiumBorder(),
                    )),
                child: "buy".text.xl.make(),
              ).wh(100, 50),
            ]).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(children: [
          Hero(
                  tag: Key(catalog.id.toString()),
                  child: Image.network(catalog.image))
              .h32(context),
          Expanded(
              child: VxArc(
            height: 30.00,
            arcType: VxArcType.CONVEY,
            edge: VxEdge.TOP,
            child: Container(
              width: context.screenWidth,
              color: Colors.white,
              child: Column(
                children: [
                  catalog.name.text.xl4
                      .color(mytheme.darkbluishcolor)
                      .bold
                      .make(),
                  catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                ],
              ).py32(),
            ),
          ))
        ]),
      ),
    );
  }
}
