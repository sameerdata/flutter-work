import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mynotes/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/Catelog.dart';
import '../../models/cart.dart';

class Addtocart extends StatelessWidget {
  final Item catalog;
  Addtocart({Key? key, required this.catalog}) : super(key: key);

  Widget build(BuildContext context) {
    final _cart = CartModel();

    bool isInCart = _cart.Items.contains(catalog) ?? false;

    return ElevatedButton(
      onPressed: () {
        if (!isInCart) {
          isInCart = isInCart.toggle();
          final _catalog = Catalogmodel();

          _cart.catalog = _catalog;
          _cart.add(catalog);
        }
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(mytheme.darkbluishcolor),
          shape: MaterialStateProperty.all(
            StadiumBorder(),
          )),
      child: isInCart ? Icon(Icons.done) : Icon(CupertinoIcons.cart_badge_plus),
    );
  }
}
