import 'package:flutter/foundation.dart';

import 'package:delifoods/provider/product.dart';

class Products with ChangeNotifier{

  List<Product> _item = [
    Product(
        id: 'p1',
        title: 'Beef Cheesy Pizza',
        description: 'Tasty Beef Cheesy Pizza, extra beef',
        price: 3000.00,
        image: 'images/BeefPizza.jpg',
        isFavourite: false
    ),
    Product(
        id: 'p2',
        title: 'Chicken Sharwama',
        description: 'Tasty chicken sharwama',
        price: 1500.00,
        image: 'images/ChickenSharwama.jpg',
        isFavourite: false
    ),
    Product(
        id: 'p3',
        title: 'Chicken Pizza',
        description: 'Tasty chicken Pizza',
        price: 3500.00,
        image: 'images/ChickenPizza.jpg',
        isFavourite: false
    ),
    Product(
        id: 'p4',
        title: 'Fried Rice',
        description: 'Tasty spiced Fried rice and Turkey',
        price: 1900.00,
        image: 'images/FriedRice.jpg',
        isFavourite: false
    ),
  ];

  List<Product> get items{
    return [..._item];
  }

  Product findById(String id){
    return _item.firstWhere((prod) => prod.id == id);
  }

}