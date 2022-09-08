import 'package:flutter/material.dart';
import 'package:mynotes/Pages/home_detail_pages.dart';

import 'package:mynotes/models/Catelog.dart';
import 'package:mynotes/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

import 'catelogimage.dart';

class cateloglist extends StatelessWidget {
  const cateloglist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: catalogmodel.items.length,
        itemBuilder: (context, index) {
          final catalog = catalogmodel.items[index];
          return InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => home_detail_pages(catalog: catalog),
              ),
            ),
            child: catelogitem(catalog: catalog),
          );
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
        Hero(
          tag: Key(catalog.id.toString()),
          child: catelogimage(image: catalog.image),
        ),
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
                    child: "Add to Cart".text.make(),
                  ),
                ]),
          ],
        ))
      ],
    )).white.rounded.square(150).make().py16();
  }
}
