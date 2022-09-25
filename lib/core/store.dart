import 'package:mynotes/models/Catelog.dart';
import 'package:mynotes/models/cart.dart';
import 'package:velocity_x/velocity_x.dart';

class mystore extends VxStore {
  late Catalogmodel catlog;
  late CartModel cart;
  mystore() {
    catlog = Catalogmodel();
    cart = CartModel();
    cart.catalog = catlog;
  }
}
