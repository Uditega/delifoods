import 'package:delifoods/views/productDetails/components/addToCartButton.dart';
import 'package:delifoods/views/productDetails/components/appBarSection.dart';
import 'package:delifoods/views/productDetails/components/duration.dart';
import 'package:delifoods/views/productDetails/components/imageItem.dart';
import 'package:delifoods/views/productDetails/components/priceSection.dart';
import 'package:delifoods/views/productDetails/components/quantity.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:delifoods/provider/product_provider.dart';

class ProductDetails extends StatelessWidget {
  static const routeName = '/Product-Detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments;
    final loadedProduct =
        Provider.of<Products>(context, listen: false).findById(productId);

    return LayoutBuilder(builder: (ctx, constraints) {
      return Scaffold(
        backgroundColor:Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.zero,
                height: constraints.maxHeight * 0.45,
                width: constraints.maxWidth * 1,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    appBarSection(context, constraints, loadedProduct.title),
                    SizedBox(
                      height: constraints.maxHeight*0.025,
                    ),
                    imageItem(loadedProduct.image),
                  ],
                ),
              ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   SizedBox(
                     height: constraints.maxHeight*0.05,
                   ),
                   priceSection(loadedProduct.price),
                   SizedBox(
                     height: constraints.maxHeight*0.01,
                   ),
                   Text(loadedProduct.description,
                     style: TextStyle(fontSize: 14, fontFamily: 'Poppins'),
                   ),
                   SizedBox(
                     height: constraints.maxHeight*0.03,
                   ),
                   duration(constraints, loadedProduct.time),
                   SizedBox(
                     height: constraints.maxHeight*0.04,
                   ),
                   quantitySection(constraints, context),
                   SizedBox(
                     height: constraints.maxHeight*0.05,
                   ),
                   addToCartButton(constraints, context),
                 ],
               ),
             ),
            ],
          ),
        ),
      );
    });
  }
}
