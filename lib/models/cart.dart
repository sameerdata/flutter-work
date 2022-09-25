import 'package:mynotes/models/Catelog.dart';

class CartModel {
  late Catalogmodel _catalog;

//collections of ids - store ids of each item
  final List<int> itemids = [];

  set catalog(Catalogmodel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  List<Item> get Items => itemids.map((id) => _catalog.getById(id)).toList();

// get total price

  num get totalPrice =>
      Items.fold(0, (total, current) => total + current.price);

  // Add Item

  void add(Item item) {
    itemids.add(item.id);
  }

  // Remove Item

  void remove(Item item) {
    itemids.remove(item.id);
  }
}
