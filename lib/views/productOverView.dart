import 'package:flutter/material.dart';
import 'package:delifoods/model/product.dart';

class ProductOverView extends StatelessWidget {

  final List<Product> loadedProduct =[
    Product(
        id: 'p1',
        title: 'Sharwama',
        description: 'Tasty chicken sharwama',
        price: 1500.00,
        image: 'images/'
    ),
  ];

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(builder: (ctx, constraints){
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Builder(
            builder: (context) => IconButton(
              icon: CircleAvatar(
                radius: 18,
                backgroundColor: Theme.of(context).accentColor,
                child: Icon(Icons.restaurant_menu_outlined,
                size: 15, color: Colors.blue,
                ),
              ),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
            ),
          ),
          actions: [
            Text('Deli Foods'),
            IconButton(
                icon: Icon(Icons.shopping_cart_outlined),
                onPressed: (){}
                ),
            IconButton(
                icon: Icon(Icons.more_vert_rounded),
                onPressed: (){}
                ),
          ],
        ),
        body: GridView.builder(
            gridDelegate: ,
            itemBuilder: itemBuilder,
        ),
      );
    });
  }
}
