import 'package:flutter/cupertino.dart';
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
        title: 'Cart'.text.black.make(),
      ),
      body: Column(
        children: [__cartliststate().p32().expand(), Divider(), _CartTotal()],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$9999".text.xl4.red800.bold.make(),
          30.widthBox,
          ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(mytheme.darkbluishcolor)),
                  child: "Buy".text.white.make())
              .w32(context)
        ],
      ),
    );
  }
}

class __cartliststate extends StatefulWidget {
  const __cartliststate({Key? key}) : super(key: key);

  @override
  State<__cartliststate> createState() => __cartliststateState();
}

class __cartliststateState extends State<__cartliststate> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(
          icon: Icon(Icons.remove_circle_outline),
          onPressed: () {},
        ),
        title: "Items".text.make(),
      ),
    );
  }
}
