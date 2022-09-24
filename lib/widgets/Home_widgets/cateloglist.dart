import 'package:flutter/material.dart';
import 'package:mynotes/Pages/home_detail_pages.dart';

import 'package:mynotes/models/Catelog.dart';
import 'package:mynotes/models/cart.dart';
import 'package:mynotes/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

import 'catelogimage.dart';

class cateloglist extends StatelessWidget {
  const cateloglist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: Catalogmodel.items.length,
        itemBuilder: (context, index) {
          final catalog = Catalogmodel.items[index];
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
                  _Addtocart(catalog: catalog),
                ]),
          ],
        ))
      ],
    )).white.rounded.square(150).make().py16();
  }
}

class _Addtocart extends StatefulWidget {
  const _Addtocart({Key? key, required this.catalog}) : super(key: key);

  final Item catalog;
  @override
  State<_Addtocart> createState() => _AddtocartState();
}

class _AddtocartState extends State<_Addtocart> {
  bool isAdded = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        isAdded = isAdded.toggle();
        final _catalog = Catalogmodel();
        final _cart = CartModel();
        _cart.catalog = _catalog;
        _cart.add(widget.catalog);
        setState(() {});
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(mytheme.darkbluishcolor),
          shape: MaterialStateProperty.all(
            StadiumBorder(),
          )),
      child: isAdded ? Icon(Icons.done) : "Add to Cart".text.make(),
    );
  }
}
