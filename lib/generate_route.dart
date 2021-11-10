import 'package:delifoods/views/productDetails/productDetail.dart';
import 'package:delifoods/views/productOverView.dart';
import 'package:flutter/material.dart';

class RouteGenerator {

  static Route<dynamic> generateRoute(RouteSettings settings){
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => ProductOverView());

    }
  }
}