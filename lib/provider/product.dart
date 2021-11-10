import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Product with ChangeNotifier{

  final String id;
  final String title;
  final String description;
  final double price;
  final String image;
  final String time;
  bool isFavourite ;

  Product ({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.price,
    @required this.image,
    @required this.time,
    this.isFavourite,
  });

  void toggleFavorite (){
    isFavourite = !isFavourite;
    notifyListeners();
  }

}