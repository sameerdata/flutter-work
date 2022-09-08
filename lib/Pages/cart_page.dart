import 'package:flutter/material.dart';
import 'package:mynotes/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class cartpage extends StatelessWidget {
  const cartpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mytheme.creamcolor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: 'Cart'.text.make(),
      ),
    );
  }
}
