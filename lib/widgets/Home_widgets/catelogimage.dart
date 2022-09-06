import 'package:flutter/material.dart';

import 'package:mynotes/models/Catelog.dart';
import 'package:mynotes/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

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
