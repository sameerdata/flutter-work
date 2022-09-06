import 'package:flutter/material.dart';

import 'package:mynotes/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

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
