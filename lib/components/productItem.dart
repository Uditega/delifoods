import 'package:delifoods/views/productDetails/productDetail.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:delifoods/provider/product.dart';

class ProductItem extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final product = Provider.of<Product>(context);

    return LayoutBuilder(builder: (ctx, constraints){
      return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 90,
              ),
            ]
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(7, 12, 7, 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                    Navigator.of(context).pushNamed(ProductDetails.routeName, arguments: product.id);
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(product.image,
                    height: constraints.maxHeight*0.55,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: constraints.maxHeight*0.04,
              ),
              Text(product.title,
                style: TextStyle(
                  fontSize: 12.5,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(
                height: constraints.maxHeight*0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('NGN ${product.price}',
                    style: TextStyle(
                        fontSize: 11,
                        color: Color(0xff555555),
                      fontFamily: 'Poppins',
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      product.toggleFavorite();
                    },
                    child: Icon(
                        product.isFavourite? Icons.favorite: Icons.favorite_border,
                    size: 18,color: Colors.red,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}

