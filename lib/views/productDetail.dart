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
        backgroundColor: Color(0xffff8c00),
        appBar: AppBar(
          elevation: 0,
          leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,
            color: Colors.black,
              size: 17,
            ),
          ),
          title: Text(
            loadedProduct.title,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.zero,
              height: constraints.maxHeight * 0.75,
              width: constraints.maxWidth * 1,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('data'),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
