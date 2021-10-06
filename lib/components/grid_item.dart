import 'package:flutter/material.dart';
import 'package:delifoods/components/productItem.dart';


import 'package:provider/provider.dart';
import 'package:delifoods/provider/product_provider.dart';

class GridProduct extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final productData = Provider.of<Products>(context);
    final products = productData.items;

    return GridView.builder(
      itemCount:  products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      itemBuilder: (ctx, i) => ChangeNotifierProvider(
        create: (_) => products[i],
        child: ProductItem(),
      ),
    );
  }
}