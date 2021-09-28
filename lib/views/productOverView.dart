import 'package:delifoods/components/sideBar.dart';
import 'package:flutter/material.dart';
import 'package:delifoods/model/product.dart';
import 'package:delifoods/components/productItem.dart';

class ProductOverView extends StatelessWidget {

  final List<Product> loadedProduct =[
    Product(
        id: 'p1',
        title: 'Beef Cheesy Pizza',
        description: 'Tasty Beef Cheesy Pizza, extra beef',
        price: 3000.00,
        image: 'images/BeefPizza.jpg'
    ),
    Product(
        id: 'p2',
        title: 'Chicken Sharwama',
        description: 'Tasty chicken sharwama',
        price: 1500.00,
        image: 'images/ChickenSharwama.jpg'
    ),
    Product(
        id: 'p3',
        title: 'Chicken Pizza',
        description: 'Tasty chicken Pizza',
        price: 3500.00,
        image: 'images/ChickenPizza.jpg'
    ),
    Product(
        id: 'p4',
        title: 'Fried Rice',
        description: 'Tasty spiced Fried rice and Turkey',
        price: 1900.00,
        image: 'images/FriedRice.jpg'
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
                size: 15, color: Colors.black,
                ),
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 80, 0),
              child: Text('Deli Foods'),
            ),
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
        body: Padding(
          padding: const EdgeInsets.fromLTRB(25, 20, 25, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: constraints.maxWidth*1,
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 12, 10, 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hello !',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                        Text('Which of our dishes will you like\n order form us Today?',
                          style: TextStyle(
                              fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    ),
                  )
                ),
              ),
              SizedBox(
                height: constraints.maxHeight*0.04,
              ),
              SizedBox(
                height: constraints.maxHeight*0.67,
                child: GridView.builder(
                  itemCount: loadedProduct.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                  ),
                  itemBuilder: (ctx, i) => ProductItem(
                      loadedProduct[i].id,
                      loadedProduct[i].image,
                      loadedProduct[i].title,
                    loadedProduct[i].price,
                    loadedProduct[i].isFavourite,
                  ),
                ),
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: SideBar(),
        ),
      );
    });
  }
}
